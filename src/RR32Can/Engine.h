#ifndef __RR32CAN__ENGINE_H__
#define __RR32CAN__ENGINE_H__

#include <array>
#include <cstring>

#include "RR32Can/Constants.h"
#include "RR32Can/Types.h"

namespace RR32Can {

/*
 * \brief Class Engine
 */
class EngineShortInfo {
 public:
  enum class AvailabilityStatus { EMPTY = 0, NAME_KNOWN, FULL_DETAILS };

  EngineShortInfo() : availability(AvailabilityStatus::EMPTY) { eraseName(); }

  virtual ~EngineShortInfo() = default;

  virtual void reset() {
    availability = AvailabilityStatus::EMPTY;
    eraseName();
  }

  void setName(const char* name) {
    reset();
    availability = AvailabilityStatus::NAME_KNOWN;
    strncpy(this->name, name, kEngineNameLength);
  }

  /**
   * \brief Sets the name only when it is different from the current name.
   *
   * \return True if the engine was changed, false otherwise.
   */
  bool setNameConditional(const char* name) {
    if (availability == AvailabilityStatus::EMPTY ||
        strncmp(name, this->name, kEngineNameLength) != 0) {
      setName(name);
      return true;
    } else {
      return false;
    }
  }

  const char* getName() const { return name; }

  AvailabilityStatus getAvailability() const { return availability; }
  bool isNameKnown() const { return availability != AvailabilityStatus::EMPTY; }

  bool isNameOnlyKnown() const {
    return availability == AvailabilityStatus::NAME_KNOWN;
  }

  bool isFree() const { return availability == AvailabilityStatus::EMPTY; }

  virtual void print() const;

 protected:
  AvailabilityStatus availability;
  char name[kEngineNameLength + 1];

  void eraseName() { memset(this->name, '\0', kEngineNameLength + 1); }

  friend class EngineControl;
};

class Engine : public EngineShortInfo {
 public:
  using EngineShortInfo::EngineShortInfo;

  using Uid_t = uint32_t;
  // Velocities have a range of 0..1000 (..1023).
  using Velocity_t = RR32Can::Velocity_t;
  using Address_t = uint32_t;
  using FunctionBits_t = uint16_t;
  using ProtocolName_t = std::array<char, 8>;

  void reset() {
    // Remove all data of this class
    uid = 0;
    velocity = 0;
    direction = RR32Can::EngineDirection::UNKNOWN;
    address = 0;
    functionBits = 0;
    memset(protocol.data(), 0, protocol.size());
  }

  bool isFullDetailsKnown() const {
    return availability == AvailabilityStatus::FULL_DETAILS;
  }

  void setUid(Uid_t uid) { this->uid = uid; }
  Uid_t getUid() const { return uid; }

  void setVelocity(Velocity_t velocity) { this->velocity = velocity; }
  Velocity_t getVelocity() const { return velocity; }

  void setDirection(RR32Can::EngineDirection direction) {
    this->direction = direction;
  }
  RR32Can::EngineDirection getDirection() const { return direction; }

  void setAddress(Address_t address) { this->address = address; }
  Address_t getAddress() const { return address; }

  void setFunctionBits(FunctionBits_t functionBits) {
    this->functionBits = functionBits;
  }
  FunctionBits_t getFunctionBits() const { return functionBits; }

  void print() const override;

  void setProtocolString(const char* protocolString) {
    strncpy(protocol.data(), protocolString, protocol.size());
  }
  const char* getProtocolString() const { return protocol.data(); }

 protected:
  Uid_t uid;
  Velocity_t velocity;
  RR32Can::EngineDirection direction;
  Address_t address;
  FunctionBits_t functionBits;
  ProtocolName_t protocol;
};

}  // namespace RR32Can

#endif  // __RR32CAN__ENGINE_H__
