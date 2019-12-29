EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 4xxx_IEEE:4044 U1
U 1 1 5E0620F6
P 5100 2200
F 0 "U1" H 5100 2816 50  0000 C CNN
F 1 "4044" H 5100 2725 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5100 2200 50  0001 C CNN
F 3 "" H 5100 2200 50  0001 C CNN
	1    5100 2200
	1    0    0    -1  
$EndComp
$Comp
L 4xxx_IEEE:4014 U3
U 1 1 5E0636B9
P 7600 2200
F 0 "U3" H 7600 2756 50  0000 C CNN
F 1 "4014" H 7600 2665 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 7600 2200 50  0001 C CNN
F 3 "" H 7600 2200 50  0001 C CNN
	1    7600 2200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5E06429A
P 9700 1550
F 0 "H1" H 9800 1599 50  0000 L CNN
F 1 "MountingHole_Pad" H 9800 1508 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 9700 1550 50  0001 C CNN
F 3 "~" H 9700 1550 50  0001 C CNN
	1    9700 1550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5E064575
P 9700 1850
F 0 "H2" H 9800 1899 50  0000 L CNN
F 1 "MountingHole_Pad" H 9800 1808 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 9700 1850 50  0001 C CNN
F 3 "~" H 9700 1850 50  0001 C CNN
	1    9700 1850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5E0647ED
P 9700 2150
F 0 "H3" H 9800 2199 50  0000 L CNN
F 1 "MountingHole_Pad" H 9800 2108 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 9700 2150 50  0001 C CNN
F 3 "~" H 9700 2150 50  0001 C CNN
	1    9700 2150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5E06494B
P 9700 2450
F 0 "H4" H 9800 2499 50  0000 L CNN
F 1 "MountingHole_Pad" H 9800 2408 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 9700 2450 50  0001 C CNN
F 3 "~" H 9700 2450 50  0001 C CNN
	1    9700 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5E064F60
P 9500 2700
F 0 "#PWR09" H 9500 2450 50  0001 C CNN
F 1 "GND" H 9505 2527 50  0000 C CNN
F 2 "" H 9500 2700 50  0001 C CNN
F 3 "" H 9500 2700 50  0001 C CNN
	1    9500 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2700 9500 2550
Wire Wire Line
	9500 1650 9700 1650
Wire Wire Line
	9700 1950 9500 1950
Connection ~ 9500 1950
Wire Wire Line
	9500 1950 9500 1650
Wire Wire Line
	9700 2250 9500 2250
Connection ~ 9500 2250
Wire Wire Line
	9500 2250 9500 1950
Wire Wire Line
	9700 2550 9500 2550
Connection ~ 9500 2550
Wire Wire Line
	9500 2550 9500 2250
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5E067E9F
P 10250 3900
F 0 "J2" H 10330 3892 50  0000 L CNN
F 1 "S88_In_Plug" H 10330 3801 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 10250 3900 50  0001 C CNN
F 3 "~" H 10250 3900 50  0001 C CNN
	1    10250 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J4
U 1 1 5E068A10
P 10250 5300
F 0 "J4" H 10330 5292 50  0000 L CNN
F 1 "S88_Out_Plug" H 10330 5201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 10250 5300 50  0001 C CNN
F 3 "~" H 10250 5300 50  0001 C CNN
	1    10250 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 3700 9450 3700
Wire Wire Line
	10050 3800 9550 3800
Wire Wire Line
	10050 3900 9650 3900
Wire Wire Line
	10050 4000 9750 4000
Wire Wire Line
	10050 4100 9850 4100
Wire Wire Line
	10050 4200 9950 4200
Wire Wire Line
	10050 3500 9950 3500
Connection ~ 9950 4200
Wire Wire Line
	10050 3400 9850 3400
Wire Wire Line
	9850 3400 9850 4100
Connection ~ 9850 4100
Wire Wire Line
	9850 4100 8400 4100
Wire Wire Line
	10050 3300 9750 3300
Wire Wire Line
	9750 3300 9750 4000
Connection ~ 9750 4000
Wire Wire Line
	9750 4000 8400 4000
Wire Wire Line
	10050 3200 9650 3200
Wire Wire Line
	9650 3200 9650 3900
Connection ~ 9650 3900
Wire Wire Line
	9650 3900 8400 3900
Wire Wire Line
	10050 3100 9550 3100
Wire Wire Line
	9550 3100 9550 3800
Connection ~ 9550 3800
Wire Wire Line
	10050 3000 9450 3000
Wire Wire Line
	9450 3000 9450 3700
Connection ~ 9450 3700
Wire Wire Line
	9450 3700 8850 3700
Text Label 9100 3700 0    50   ~ 0
DATA_IN
$Comp
L power:VCC #PWR08
U 1 1 5E06C56D
P 8250 4200
F 0 "#PWR08" H 8250 4050 50  0001 C CNN
F 1 "VCC" H 8267 4373 50  0000 C CNN
F 2 "" H 8250 4200 50  0001 C CNN
F 3 "" H 8250 4200 50  0001 C CNN
	1    8250 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3800 9550 3800
$Comp
L power:GND #PWR07
U 1 1 5E06D21E
P 8250 3800
F 0 "#PWR07" H 8250 3550 50  0001 C CNN
F 1 "GND" H 8255 3627 50  0000 C CNN
F 2 "" H 8250 3800 50  0001 C CNN
F 3 "" H 8250 3800 50  0001 C CNN
	1    8250 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4200 9950 4200
Text Label 8400 3900 0    50   ~ 0
CLOCK
Text Label 8400 4000 0    50   ~ 0
LOAD
Text Label 8400 4100 0    50   ~ 0
RESET
Wire Wire Line
	10050 4400 9450 4400
Text Label 8400 4400 0    50   ~ 0
DATA_OUT
Wire Wire Line
	9950 3500 9950 4200
Wire Wire Line
	10050 5600 9950 5600
Wire Wire Line
	9950 5600 9950 4900
Wire Wire Line
	10050 4900 9950 4900
Connection ~ 9950 4900
Wire Wire Line
	9950 4900 9950 4200
Wire Wire Line
	10050 5500 9850 5500
Wire Wire Line
	9850 5500 9850 4800
Wire Wire Line
	10050 5400 9750 5400
Wire Wire Line
	9750 5400 9750 4700
Wire Wire Line
	10050 5300 9650 5300
Wire Wire Line
	9650 5300 9650 4600
Wire Wire Line
	10050 5200 9550 5200
Wire Wire Line
	9550 5200 9550 4500
Wire Wire Line
	10050 5100 9450 5100
Wire Wire Line
	9450 5100 9450 4400
Connection ~ 9450 4400
Wire Wire Line
	9450 4400 8400 4400
Wire Wire Line
	10050 4800 9850 4800
Connection ~ 9850 4800
Wire Wire Line
	9850 4800 9850 4100
Wire Wire Line
	10050 4700 9750 4700
Connection ~ 9750 4700
Wire Wire Line
	9750 4700 9750 4000
Wire Wire Line
	10050 4600 9650 4600
Connection ~ 9650 4600
Wire Wire Line
	9650 4600 9650 3900
Wire Wire Line
	10050 4500 9550 4500
Connection ~ 9550 4500
Wire Wire Line
	9550 4500 9550 3800
Wire Wire Line
	8150 2950 8350 2950
Text Label 8350 2950 0    50   ~ 0
DATA_OUT
Wire Wire Line
	7050 2150 6650 2150
Text Label 6650 2150 0    50   ~ 0
DATA_IN
$Comp
L Switch:SW_Push SW1
U 1 1 5E07FE1D
P 2200 1600
F 0 "SW1" H 2200 1885 50  0000 C CNN
F 1 "SW_Push" H 2200 1794 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2200 1800 50  0001 C CNN
F 3 "~" H 2200 1800 50  0001 C CNN
	1    2200 1600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5E080DBE
P 2200 2000
F 0 "SW2" H 2200 2285 50  0000 C CNN
F 1 "SW_Push" H 2200 2194 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2200 2200 50  0001 C CNN
F 3 "~" H 2200 2200 50  0001 C CNN
	1    2200 2000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5E082996
P 2200 2400
F 0 "SW3" H 2200 2685 50  0000 C CNN
F 1 "SW_Push" H 2200 2594 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2200 2600 50  0001 C CNN
F 3 "~" H 2200 2600 50  0001 C CNN
	1    2200 2400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5E0829A0
P 2200 2800
F 0 "SW4" H 2200 3085 50  0000 C CNN
F 1 "SW_Push" H 2200 2994 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2200 3000 50  0001 C CNN
F 3 "~" H 2200 3000 50  0001 C CNN
	1    2200 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5E0840BF
P 1800 2950
F 0 "#PWR01" H 1800 2700 50  0001 C CNN
F 1 "GND" H 1805 2777 50  0000 C CNN
F 2 "" H 1800 2950 50  0001 C CNN
F 3 "" H 1800 2950 50  0001 C CNN
	1    1800 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2950 1800 2800
Wire Wire Line
	1800 2800 2000 2800
Wire Wire Line
	1800 2800 1800 2400
Wire Wire Line
	1800 2400 2000 2400
Connection ~ 1800 2800
Wire Wire Line
	1800 2400 1800 2000
Wire Wire Line
	1800 2000 2000 2000
Connection ~ 1800 2400
Wire Wire Line
	1800 2000 1800 1600
Wire Wire Line
	1800 1600 2000 1600
Connection ~ 1800 2000
Wire Wire Line
	2400 1600 2650 1600
Wire Wire Line
	2400 2000 2750 2000
Wire Wire Line
	2400 2400 2850 2400
Wire Wire Line
	2400 2800 2950 2800
Wire Wire Line
	2650 1500 2650 1600
Connection ~ 2650 1600
Connection ~ 2750 2000
Connection ~ 2850 2400
Connection ~ 2950 2800
Wire Wire Line
	4600 2300 4500 2300
Wire Wire Line
	4500 2300 4500 2500
Wire Wire Line
	4600 2900 4500 2900
Connection ~ 4500 2900
Wire Wire Line
	4600 2700 4500 2700
Connection ~ 4500 2700
Wire Wire Line
	4500 2700 4500 2900
Wire Wire Line
	4600 2500 4500 2500
Connection ~ 4500 2500
Wire Wire Line
	4500 2500 4500 2700
$Comp
L power:VCC #PWR05
U 1 1 5E0BC765
P 4600 1800
F 0 "#PWR05" H 4600 1650 50  0001 C CNN
F 1 "VCC" H 4617 1973 50  0000 C CNN
F 2 "" H 4600 1800 50  0001 C CNN
F 3 "" H 4600 1800 50  0001 C CNN
	1    4600 1800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 5E0C7D75
P 2650 650
F 0 "#PWR03" H 2650 500 50  0001 C CNN
F 1 "VCC" H 2667 823 50  0000 C CNN
F 2 "" H 2650 650 50  0001 C CNN
F 3 "" H 2650 650 50  0001 C CNN
	1    2650 650 
	1    0    0    -1  
$EndComp
$Comp
L 4xxx_IEEE:4044 U2
U 1 1 5E0C826F
P 5100 4000
F 0 "U2" H 5100 4616 50  0000 C CNN
F 1 "4044" H 5100 4525 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5100 4000 50  0001 C CNN
F 3 "" H 5100 4000 50  0001 C CNN
	1    5100 4000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 5E0C8279
P 2200 3400
F 0 "SW5" H 2200 3685 50  0000 C CNN
F 1 "SW_Push" H 2200 3594 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2200 3600 50  0001 C CNN
F 3 "~" H 2200 3600 50  0001 C CNN
	1    2200 3400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 5E0C8283
P 2200 3800
F 0 "SW6" H 2200 4085 50  0000 C CNN
F 1 "SW_Push" H 2200 3994 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2200 4000 50  0001 C CNN
F 3 "~" H 2200 4000 50  0001 C CNN
	1    2200 3800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW7
U 1 1 5E0C828D
P 2200 4200
F 0 "SW7" H 2200 4485 50  0000 C CNN
F 1 "SW_Push" H 2200 4394 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2200 4400 50  0001 C CNN
F 3 "~" H 2200 4400 50  0001 C CNN
	1    2200 4200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW8
U 1 1 5E0C8297
P 2200 4600
F 0 "SW8" H 2200 4885 50  0000 C CNN
F 1 "SW_Push" H 2200 4794 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2200 4800 50  0001 C CNN
F 3 "~" H 2200 4800 50  0001 C CNN
	1    2200 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5E0C82A1
P 1800 4750
F 0 "#PWR02" H 1800 4500 50  0001 C CNN
F 1 "GND" H 1805 4577 50  0000 C CNN
F 2 "" H 1800 4750 50  0001 C CNN
F 3 "" H 1800 4750 50  0001 C CNN
	1    1800 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4750 1800 4600
Wire Wire Line
	1800 4600 2000 4600
Wire Wire Line
	1800 4600 1800 4200
Wire Wire Line
	1800 4200 2000 4200
Connection ~ 1800 4600
Wire Wire Line
	1800 4200 1800 3800
Wire Wire Line
	1800 3800 2000 3800
Connection ~ 1800 4200
Wire Wire Line
	1800 3800 1800 3400
Wire Wire Line
	1800 3400 2000 3400
Connection ~ 1800 3800
Wire Wire Line
	4600 4100 4500 4100
Wire Wire Line
	4500 4100 4500 4300
Wire Wire Line
	4600 4700 4500 4700
Wire Wire Line
	4600 4500 4500 4500
Connection ~ 4500 4500
Wire Wire Line
	4500 4500 4500 4700
Wire Wire Line
	4600 4300 4500 4300
Connection ~ 4500 4300
Wire Wire Line
	4500 4300 4500 4500
Wire Wire Line
	4600 3750 4600 3700
$Comp
L power:VCC #PWR06
U 1 1 5E0C82F9
P 4600 3700
F 0 "#PWR06" H 4600 3550 50  0001 C CNN
F 1 "VCC" H 4617 3873 50  0000 C CNN
F 2 "" H 4600 3700 50  0001 C CNN
F 3 "" H 4600 3700 50  0001 C CNN
	1    4600 3700
	1    0    0    -1  
$EndComp
Connection ~ 4500 4100
Text Label 7300 3600 0    50   ~ 0
RESET
Wire Wire Line
	2400 3400 3050 3400
Wire Wire Line
	2400 3800 3150 3800
Wire Wire Line
	2400 4200 3250 4200
Wire Wire Line
	2400 4600 3350 4600
Connection ~ 3050 3400
Connection ~ 3150 3800
Connection ~ 3250 4200
Wire Wire Line
	3350 1500 3350 4600
Connection ~ 3350 4600
Wire Wire Line
	7050 2000 6650 2000
Text Label 6650 2000 0    50   ~ 0
CLOCK
Wire Wire Line
	7050 1900 6650 1900
Text Label 6650 1900 0    50   ~ 0
LOAD
Wire Wire Line
	5600 2450 5900 2450
Wire Wire Line
	5600 2650 5950 2650
Wire Wire Line
	5600 2850 6000 2850
Wire Wire Line
	6000 2850 6000 2550
Wire Wire Line
	6000 2550 7050 2550
Wire Wire Line
	5600 4050 6300 4050
Wire Wire Line
	6300 4050 6300 2850
Wire Wire Line
	5600 4250 6400 4250
Wire Wire Line
	6400 4250 6400 2650
Wire Wire Line
	5600 4450 6500 4450
Wire Wire Line
	6500 4450 6500 2750
Wire Wire Line
	5600 4650 6600 4650
Wire Wire Line
	6600 4650 6600 2950
Wire Wire Line
	6600 2950 7050 2950
$Comp
L Device:C C1
U 1 1 5E18AE89
P 2650 1750
F 0 "C1" H 2765 1796 50  0000 L CNN
F 1 "10n" H 2765 1705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2688 1600 50  0001 C CNN
F 3 "~" H 2650 1750 50  0001 C CNN
	1    2650 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E18B5AC
P 2750 2150
F 0 "C2" H 2865 2196 50  0000 L CNN
F 1 "10n" H 2865 2105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2788 2000 50  0001 C CNN
F 3 "~" H 2750 2150 50  0001 C CNN
	1    2750 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E18B8DE
P 2850 2550
F 0 "C3" H 2965 2596 50  0000 L CNN
F 1 "10n" H 2965 2505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2888 2400 50  0001 C CNN
F 3 "~" H 2850 2550 50  0001 C CNN
	1    2850 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5E18BC22
P 2950 2950
F 0 "C4" H 3065 2996 50  0000 L CNN
F 1 "10n" H 3065 2905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2988 2800 50  0001 C CNN
F 3 "~" H 2950 2950 50  0001 C CNN
	1    2950 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5E18BEF4
P 3050 3550
F 0 "C5" H 3165 3596 50  0000 L CNN
F 1 "10n" H 3165 3505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3088 3400 50  0001 C CNN
F 3 "~" H 3050 3550 50  0001 C CNN
	1    3050 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5E18C253
P 3150 3950
F 0 "C6" H 3265 3996 50  0000 L CNN
F 1 "10n" H 3265 3905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3188 3800 50  0001 C CNN
F 3 "~" H 3150 3950 50  0001 C CNN
	1    3150 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5E18C554
P 3250 4350
F 0 "C7" H 3365 4396 50  0000 L CNN
F 1 "10n" H 3365 4305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3288 4200 50  0001 C CNN
F 3 "~" H 3250 4350 50  0001 C CNN
	1    3250 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5E18C7C6
P 3350 4750
F 0 "C8" H 3465 4796 50  0000 L CNN
F 1 "10n" H 3465 4705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3388 4600 50  0001 C CNN
F 3 "~" H 3350 4750 50  0001 C CNN
	1    3350 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1900 2650 2300
Wire Wire Line
	2650 4900 3350 4900
$Comp
L power:GND #PWR04
U 1 1 5E1972E0
P 2650 4900
F 0 "#PWR04" H 2650 4650 50  0001 C CNN
F 1 "GND" H 2655 4727 50  0000 C CNN
F 2 "" H 2650 4900 50  0001 C CNN
F 3 "" H 2650 4900 50  0001 C CNN
	1    2650 4900
	1    0    0    -1  
$EndComp
Connection ~ 2650 4900
Wire Wire Line
	3250 4500 2650 4500
Connection ~ 2650 4500
Wire Wire Line
	2650 4500 2650 4900
Wire Wire Line
	3150 4100 2650 4100
Connection ~ 2650 4100
Wire Wire Line
	2650 4100 2650 4500
Wire Wire Line
	3050 3700 2650 3700
Connection ~ 2650 3700
Wire Wire Line
	2650 3700 2650 4100
Wire Wire Line
	2950 3100 2650 3100
Connection ~ 2650 3100
Wire Wire Line
	2650 3100 2650 3700
Wire Wire Line
	2850 2700 2650 2700
Connection ~ 2650 2700
Wire Wire Line
	2650 2700 2650 3100
Wire Wire Line
	2750 2300 2650 2300
Connection ~ 2650 2300
Wire Wire Line
	2650 2300 2650 2700
$Comp
L Device:R R3
U 1 1 5E1E7077
P 8700 3700
F 0 "R3" V 8493 3700 50  0000 C CNN
F 1 "100k" V 8584 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8630 3700 50  0001 C CNN
F 3 "~" H 8700 3700 50  0001 C CNN
	1    8700 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 3700 8250 3700
Wire Wire Line
	8250 3700 8250 3800
Connection ~ 8250 3800
$Comp
L Transistor_BJT:BC237 Q1
U 1 1 5E1F3EB0
P 5850 3600
F 0 "Q1" H 6041 3646 50  0000 L CNN
F 1 "BC237" H 6041 3555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6050 3525 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC237-D.PDF" H 5850 3600 50  0001 L CNN
	1    5850 3600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5E2012F0
P 5750 3800
F 0 "#PWR011" H 5750 3550 50  0001 C CNN
F 1 "GND" H 5755 3627 50  0000 C CNN
F 2 "" H 5750 3800 50  0001 C CNN
F 3 "" H 5750 3800 50  0001 C CNN
	1    5750 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E20E538
P 5750 3150
F 0 "R1" H 5680 3104 50  0000 R CNN
F 1 "10k" H 5680 3195 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5680 3150 50  0001 C CNN
F 3 "~" H 5750 3150 50  0001 C CNN
	1    5750 3150
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR010
U 1 1 5E20EB57
P 5750 3000
F 0 "#PWR010" H 5750 2850 50  0001 C CNN
F 1 "VCC" H 5767 3173 50  0000 C CNN
F 2 "" H 5750 3000 50  0001 C CNN
F 3 "" H 5750 3000 50  0001 C CNN
	1    5750 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3400 5750 3300
Wire Wire Line
	5750 3300 4500 3300
Connection ~ 5750 3300
Connection ~ 4500 3300
Wire Wire Line
	4500 3300 4500 4100
Wire Wire Line
	4500 2900 4500 3300
$Comp
L Device:R R2
U 1 1 5E2279B2
P 6850 3600
F 0 "R2" V 7057 3600 50  0000 C CNN
F 1 "10k" V 6966 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6780 3600 50  0001 C CNN
F 3 "~" H 6850 3600 50  0001 C CNN
	1    6850 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 3600 6700 3600
Wire Wire Line
	7000 3600 7300 3600
$Comp
L Device:C C9
U 1 1 5E2413B1
P 7850 4050
F 0 "C9" H 7965 4096 50  0000 L CNN
F 1 "100n" H 7965 4005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 7888 3900 50  0001 C CNN
F 3 "~" H 7850 4050 50  0001 C CNN
	1    7850 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4200 8250 4200
Connection ~ 8250 4200
Wire Wire Line
	7850 3900 7850 3800
Wire Wire Line
	7850 3800 8250 3800
$Comp
L Device:R_Network04 RN1
U 1 1 5E2CA41F
P 2700 950
F 0 "RN1" H 2888 996 50  0000 L CNN
F 1 "100k" H 2888 905 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP5" V 2975 950 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2700 950 50  0001 C CNN
	1    2700 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Network04 RN2
U 1 1 5E2CC553
P 3400 950
F 0 "RN2" H 3588 996 50  0000 L CNN
F 1 "100k" H 3588 905 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP5" V 3675 950 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 3400 950 50  0001 C CNN
	1    3400 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1500 2500 1500
Wire Wire Line
	2500 1500 2500 1150
Wire Wire Line
	2600 1400 2600 1150
Wire Wire Line
	2850 1400 2850 2400
Wire Wire Line
	2850 1400 2600 1400
Wire Wire Line
	2750 1450 3200 1450
Wire Wire Line
	3200 1450 3200 1150
Wire Wire Line
	2750 1450 2750 2000
Wire Wire Line
	2950 1350 2950 2800
Wire Wire Line
	3150 1300 3150 3800
Wire Wire Line
	3350 1500 3500 1500
Wire Wire Line
	3500 1500 3500 1150
Wire Wire Line
	2950 1350 3300 1350
Wire Wire Line
	3300 1350 3300 1150
Wire Wire Line
	3050 1300 2700 1300
Wire Wire Line
	2700 1300 2700 1150
Wire Wire Line
	3050 1300 3050 3400
Wire Wire Line
	3150 1300 3400 1300
Wire Wire Line
	3400 1300 3400 1150
Wire Wire Line
	3250 1250 2800 1250
Wire Wire Line
	2800 1250 2800 1150
Wire Wire Line
	3250 1250 3250 4200
Wire Wire Line
	2500 750  2650 750 
Wire Wire Line
	2650 750  2650 650 
Connection ~ 2650 750 
Wire Wire Line
	2650 750  3200 750 
Wire Wire Line
	3800 2000 2750 2000
Wire Wire Line
	4600 1800 4600 1950
Wire Wire Line
	4350 4200 4600 4200
$Comp
L Device:R R4
U 1 1 5E5664B7
P 3950 1600
F 0 "R4" V 3743 1600 50  0000 C CNN
F 1 "10k" V 3834 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3880 1600 50  0001 C CNN
F 3 "~" H 3950 1600 50  0001 C CNN
	1    3950 1600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E56FE8F
P 5400 3450
F 0 "#PWR0101" H 5400 3200 50  0001 C CNN
F 1 "GND" H 5405 3277 50  0000 C CNN
F 2 "" H 5400 3450 50  0001 C CNN
F 3 "" H 5400 3450 50  0001 C CNN
	1    5400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3600 5250 3450
Wire Wire Line
	5250 3450 5400 3450
$Comp
L power:GND #PWR0102
U 1 1 5E581010
P 5400 1650
F 0 "#PWR0102" H 5400 1400 50  0001 C CNN
F 1 "GND" H 5405 1477 50  0000 C CNN
F 2 "" H 5400 1650 50  0001 C CNN
F 3 "" H 5400 1650 50  0001 C CNN
	1    5400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1800 5250 1650
Wire Wire Line
	5250 1650 5400 1650
$Comp
L power:VCC #PWR0103
U 1 1 5E592736
P 5100 3200
F 0 "#PWR0103" H 5100 3050 50  0001 C CNN
F 1 "VCC" H 5117 3373 50  0000 C CNN
F 2 "" H 5100 3200 50  0001 C CNN
F 3 "" H 5100 3200 50  0001 C CNN
	1    5100 3200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 5E592A48
P 5100 1500
F 0 "#PWR0104" H 5100 1350 50  0001 C CNN
F 1 "VCC" H 5117 1673 50  0000 C CNN
F 2 "" H 5100 1500 50  0001 C CNN
F 3 "" H 5100 1500 50  0001 C CNN
	1    5100 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1800 5100 1500
Wire Wire Line
	5100 3600 5100 3200
$Comp
L Device:R R5
U 1 1 5E5DEC1C
P 3950 2000
F 0 "R5" V 3743 2000 50  0000 C CNN
F 1 "10k" V 3834 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3880 2000 50  0001 C CNN
F 3 "~" H 3950 2000 50  0001 C CNN
	1    3950 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5E5DEE56
P 3950 2400
F 0 "R6" V 3743 2400 50  0000 C CNN
F 1 "10k" V 3834 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3880 2400 50  0001 C CNN
F 3 "~" H 3950 2400 50  0001 C CNN
	1    3950 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5E5DF14F
P 3950 2800
F 0 "R7" V 3743 2800 50  0000 C CNN
F 1 "10k" V 3834 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3880 2800 50  0001 C CNN
F 3 "~" H 3950 2800 50  0001 C CNN
	1    3950 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 1600 4400 1600
Wire Wire Line
	4300 2000 4100 2000
Wire Wire Line
	2850 2400 3800 2400
Wire Wire Line
	4200 2400 4100 2400
Wire Wire Line
	2650 1600 3800 1600
Wire Wire Line
	2950 2800 3800 2800
Wire Wire Line
	4600 2800 4100 2800
$Comp
L Device:R R8
U 1 1 5E6C2347
P 3950 3400
F 0 "R8" V 3743 3400 50  0000 C CNN
F 1 "10k" V 3834 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3880 3400 50  0001 C CNN
F 3 "~" H 3950 3400 50  0001 C CNN
	1    3950 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5E6C2351
P 3950 3800
F 0 "R9" V 3743 3800 50  0000 C CNN
F 1 "10k" V 3834 3800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3880 3800 50  0001 C CNN
F 3 "~" H 3950 3800 50  0001 C CNN
	1    3950 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5E6C235B
P 3950 4200
F 0 "R10" V 3743 4200 50  0000 C CNN
F 1 "10k" V 3834 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3880 4200 50  0001 C CNN
F 3 "~" H 3950 4200 50  0001 C CNN
	1    3950 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5E6C2365
P 3950 4600
F 0 "R11" V 3743 4600 50  0000 C CNN
F 1 "10k" V 3834 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3880 4600 50  0001 C CNN
F 3 "~" H 3950 4600 50  0001 C CNN
	1    3950 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 4600 4600 4600
Wire Wire Line
	3050 3400 3800 3400
Wire Wire Line
	4100 3400 4350 3400
Wire Wire Line
	4250 3800 4100 3800
Wire Wire Line
	3150 3800 3800 3800
Wire Wire Line
	3250 4200 3800 4200
Wire Wire Line
	4150 4200 4100 4200
Wire Wire Line
	4250 4400 4600 4400
Wire Wire Line
	3350 4600 3800 4600
NoConn ~ 8150 2750
NoConn ~ 8150 2850
Wire Wire Line
	4400 1600 4400 2400
Wire Wire Line
	4400 2400 4600 2400
Wire Wire Line
	5900 2250 7050 2250
Wire Wire Line
	5900 2250 5900 2450
Wire Wire Line
	4200 2400 4200 2200
Wire Wire Line
	4200 2200 4600 2200
Wire Wire Line
	5600 2250 5600 2150
Wire Wire Line
	5600 2150 6500 2150
Wire Wire Line
	6500 2150 6500 2450
Wire Wire Line
	6500 2450 7050 2450
Wire Wire Line
	4300 2000 4300 2600
Wire Wire Line
	4300 2600 4600 2600
Wire Wire Line
	5950 2350 7050 2350
Wire Wire Line
	5950 2350 5950 2650
Wire Wire Line
	4350 3400 4350 4200
Wire Wire Line
	4250 3800 4250 4400
Wire Wire Line
	6400 2650 7050 2650
Wire Wire Line
	6500 2750 7050 2750
Wire Wire Line
	4150 4200 4150 4000
Wire Wire Line
	4150 4000 4600 4000
Wire Wire Line
	6300 2850 7050 2850
Text Label 4550 3300 0    50   ~ 0
RESET_LOCAL
$EndSCHEMATC
