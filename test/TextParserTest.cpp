#include "gmock/gmock.h"
#include "gtest/gtest.h"

#include <functional>
#include <memory>

#include "RR32Can/TextParser.h"

constexpr uint8_t testData1NumChunks = 9;
char testData1[testData1NumChunks][8 + 1] = {
    "[lokname",  "n]\n  .we", "rt=BR 96", " 1234\n  ", ".wert=ET",
    " 515\n[nu", "mloks]\n ", " .wert=1", "2\n"};

std::function<void(const RR32Can::BufferManager&, const RR32Can::BufferManager&,
                   const RR32Can::BufferManager&)>
    CanValueHandler;

class CallbackMockBase {
 public:
  virtual void mocked_method(const char*, const char*, const char*) = 0;
  /*
  void operator()(const RR32Can::BufferManager& section,
                  const RR32Can::BufferManager& key,
                  const RR32Can::BufferManager& value) {
    this->mocked_method(section.data(), key.data(), value.data());
  }*/
};

class CallbackMock : public CallbackMockBase {
 public:
  MOCK_METHOD3(mocked_method,
               void(const char* section, const char* key, const char* value));
};

class TextParserFixture : public ::testing::Test {
 protected:
  std::unique_ptr<::testing::StrictMock<CallbackMock>> mock;
  RR32Can::TextParser parser;

  void reportParseError() { parser.reportParseError(); }

  void SetUp() {
    mock = std::make_unique<::testing::StrictMock<CallbackMock>>();
    CanValueHandler = [this](const RR32Can::BufferManager& section,
                             const RR32Can::BufferManager& key,
                             const RR32Can::BufferManager& value) {
      this->mock->mocked_method(section.data(), key.data(), value.data());
    };
    EXPECT_EQ(RR32Can::TextParser::State::LOOKING_FOR_KEY_OR_SECTION_START,
              parser.getState());
  }
};

void RR32CanValueHandler(const RR32Can::BufferManager& section,
                         const RR32Can::BufferManager& key,
                         const RR32Can::BufferManager& value) {
  CanValueHandler(section, key, value);
}

TEST_F(TextParserFixture, reportError) {
  EXPECT_CALL(
      *mock, mocked_method(::testing::StrEq("ERROR"), ::testing::StrEq("ERROR"),
                           ::testing::StrEq("ERROR")));
  reportParseError();
  // Parser is reset to initial state
  EXPECT_EQ(RR32Can::TextParser::State::ERROR, parser.getState());
}

TEST_F(TextParserFixture, oversized_data) {
  char buffer[] =
      "This data is muuuuuuch too long to fit into the input buffer.";

  RR32Can::BufferManager::size_type length =
      static_cast<RR32Can::BufferManager::size_type>(strlen(buffer));
  RR32Can::BufferManager mgr(buffer, length, length);

  EXPECT_LT(RR32Can::TextParser::kBufferLength, mgr.length());

  EXPECT_CALL(
      *mock, mocked_method(::testing::StrEq("ERROR"), ::testing::StrEq("ERROR"),
                           ::testing::StrEq("ERROR")));

  parser.addText(mgr);

  // Parser is reset to initial state
  EXPECT_EQ(RR32Can::TextParser::State::ERROR, parser.getState());
}

TEST_F(TextParserFixture, oversized_data_exact) {
  char buffer[] = "This data is muuuuuuch too lon";

  RR32Can::BufferManager::size_type length =
      static_cast<RR32Can::BufferManager::size_type>(strlen(buffer));
  RR32Can::BufferManager mgr(buffer, length, length);

  EXPECT_EQ(RR32Can::TextParser::kBufferLength, mgr.length());

  // No tokens found in the input

  parser.addText(mgr);

  // Parser remains in initial state
  EXPECT_EQ(RR32Can::TextParser::State::LOOKING_FOR_KEY_OR_SECTION_START,
            parser.getState());
}

TEST_F(TextParserFixture, oversized_data_plusone) {
  char buffer[] = "This data is muuuuuuch too long";

  RR32Can::BufferManager::size_type length =
      static_cast<RR32Can::BufferManager::size_type>(strlen(buffer));
  RR32Can::BufferManager mgr(buffer, length, length);

  EXPECT_EQ(RR32Can::TextParser::kBufferLength + 1, mgr.length());

  EXPECT_CALL(
      *mock, mocked_method(::testing::StrEq("ERROR"), ::testing::StrEq("ERROR"),
                           ::testing::StrEq("ERROR")));

  parser.addText(mgr);

  // Parser is reset to initial state
  EXPECT_EQ(RR32Can::TextParser::State::ERROR, parser.getState());
}

TEST_F(TextParserFixture, FindToken_01) {
  parser.reset();

  char* buffer = testData1[0];
  RR32Can::BufferManager::size_type length =
      static_cast<RR32Can::BufferManager::size_type>(strlen(buffer));
  RR32Can::BufferManager mgr(buffer, length, length);

  parser.buffer.push_back(mgr);
  RR32Can::TextParser::FindTokenResult result =
      parser.findToken(0, RR32Can::TextParser::kKeyOrSectionStart, nullptr);

  EXPECT_TRUE(result.success);
  EXPECT_EQ(1, result.consumed);
  EXPECT_TRUE(parser.section.empty());
  EXPECT_TRUE(parser.key.empty());
  EXPECT_TRUE(parser.value.empty());

  parser.reset();

  parser.buffer.push_back(mgr);
  result =
      parser.findToken(1, RR32Can::TextParser::kSectionStop, &parser.section);

  EXPECT_FALSE(result.success);
  EXPECT_EQ(8, result.consumed);
  EXPECT_FALSE(parser.section.empty());
  EXPECT_TRUE(parser.key.empty());
  EXPECT_TRUE(parser.value.empty());

  parser.buffer.erase();

  buffer = testData1[1];
  length = static_cast<RR32Can::BufferManager::size_type>(strlen(buffer));
  mgr = RR32Can::BufferManager(buffer, length, length);

  parser.buffer.push_back(mgr);
  result =
      parser.findToken(0, RR32Can::TextParser::kSectionStop, &parser.section);

  EXPECT_TRUE(result.success);
  EXPECT_EQ(2, result.consumed);
  EXPECT_FALSE(parser.section.empty());
  EXPECT_STREQ("loknamen", parser.section.data());
  EXPECT_TRUE(parser.key.empty());
  EXPECT_TRUE(parser.value.empty());
}

TEST_F(TextParserFixture, testData1) {
  EXPECT_CALL(*mock, mocked_method(::testing::StrEq("loknamen"),
                                   ::testing::StrEq("wert"),
                                   ::testing::StrEq("BR 96 1234")));

  EXPECT_CALL(*mock, mocked_method(::testing::StrEq("loknamen"),
                                   ::testing::StrEq("wert"),
                                   ::testing::StrEq("ET 515")));

  EXPECT_CALL(*mock,
              mocked_method(::testing::StrEq("numloks"),
                            ::testing::StrEq("wert"), ::testing::StrEq("12")));

  for (uint8_t i = 0; i < testData1NumChunks; ++i) {
    char* buffer = testData1[i];
    RR32Can::BufferManager::size_type length =
        static_cast<RR32Can::BufferManager::size_type>(strlen(buffer));
    RR32Can::BufferManager mgr(buffer, length, length);
    if (i < testData1NumChunks - 1) {
      EXPECT_EQ(8, mgr.length());
    } else {
      EXPECT_EQ(2, mgr.length());
    }

    parser.addText(mgr);
  }

  // Parser is reset to initial state
  EXPECT_EQ(RR32Can::TextParser::State::LOOKING_FOR_KEY_OR_SECTION_START,
            parser.getState());
}