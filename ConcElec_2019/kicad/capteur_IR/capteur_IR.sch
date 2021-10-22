EESchema Schematic File Version 4
LIBS:capteur_IR-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
L capteur_IR-rescue:Conn_01x03_Male-Connector J1
U 1 1 5DA5A9BE
P 2050 2950
F 0 "J1" H 2156 3228 50  0000 C CNN
F 1 "Conn_01x03_Male" H 2156 3137 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2050 2950 50  0001 C CNN
F 3 "~" H 2050 2950 50  0001 C CNN
	1    2050 2950
	1    0    0    -1  
$EndComp
$Comp
L capteur_IR-rescue:+5V-power #PWR02
U 1 1 5DA5AA71
P 2500 2750
F 0 "#PWR02" H 2500 2600 50  0001 C CNN
F 1 "+5V" H 2515 2923 50  0000 C CNN
F 2 "" H 2500 2750 50  0001 C CNN
F 3 "" H 2500 2750 50  0001 C CNN
	1    2500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2750 2500 2850
Wire Wire Line
	2500 2850 2250 2850
$Comp
L capteur_IR-rescue:GND-power #PWR03
U 1 1 5DA5AAAB
P 2500 3100
F 0 "#PWR03" H 2500 2850 50  0001 C CNN
F 1 "GND" H 2505 2927 50  0000 C CNN
F 2 "" H 2500 3100 50  0001 C CNN
F 3 "" H 2500 3100 50  0001 C CNN
	1    2500 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3100 2500 3050
Wire Wire Line
	2500 3050 2250 3050
Text GLabel 2600 2950 2    50   Input ~ 0
C1
Wire Wire Line
	2600 2950 2250 2950
$Comp
L capteur_IR-rescue:PWR_FLAG-power #FLG01
U 1 1 5DA5AB27
P 2500 2850
F 0 "#FLG01" H 2500 2925 50  0001 C CNN
F 1 "PWR_FLAG" V 2500 2978 50  0000 L CNN
F 2 "" H 2500 2850 50  0001 C CNN
F 3 "~" H 2500 2850 50  0001 C CNN
	1    2500 2850
	0    1    1    0   
$EndComp
Connection ~ 2500 2850
$Comp
L capteur_IR-rescue:PWR_FLAG-power #FLG02
U 1 1 5DA5AB4E
P 2500 3050
F 0 "#FLG02" H 2500 3125 50  0001 C CNN
F 1 "PWR_FLAG" V 2500 3178 50  0000 L CNN
F 2 "" H 2500 3050 50  0001 C CNN
F 3 "~" H 2500 3050 50  0001 C CNN
	1    2500 3050
	0    1    1    0   
$EndComp
Connection ~ 2500 3050
Text Notes 1400 3350 0    50   ~ 0
connection vers l'arduino\nentrée: 5V et GND\nsortie: C1 
$Comp
L capteur_IR-rescue:Conn_01x04_Male-Connector J2
U 1 1 5DA5ACE8
P 2050 3700
F 0 "J2" H 2156 3978 50  0000 C CNN
F 1 "Conn_01x04_Male" H 2156 3887 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2050 3700 50  0001 C CNN
F 3 "~" H 2050 3700 50  0001 C CNN
	1    2050 3700
	1    0    0    -1  
$EndComp
$Comp
L capteur_IR-rescue:+5V-power #PWR01
U 1 1 5DA5ADB7
P 2400 4100
F 0 "#PWR01" H 2400 3950 50  0001 C CNN
F 1 "+5V" H 2415 4273 50  0000 C CNN
F 2 "" H 2400 4100 50  0001 C CNN
F 3 "" H 2400 4100 50  0001 C CNN
	1    2400 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 3800 2400 3800
Wire Wire Line
	2400 3800 2400 4100
$Comp
L capteur_IR-rescue:R-Device R1
U 1 1 5DA5AE8E
P 2500 3650
F 0 "R1" H 2570 3696 50  0000 L CNN
F 1 "82" H 2570 3605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2430 3650 50  0001 C CNN
F 3 "~" H 2500 3650 50  0001 C CNN
	1    2500 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3800 2500 3800
Connection ~ 2400 3800
Wire Wire Line
	2500 3500 2250 3500
Wire Wire Line
	2250 3500 2250 3600
Text GLabel 2250 3700 2    50   Input ~ 0
em
Text GLabel 2250 3900 2    50   Output ~ 0
rep
$Sheet
S 3700 3650 950  600 
U 5DA5B100
F0 "Emetteur" 50
F1 "emetteur.sch" 50
F2 "Q" O L 3700 4150 50 
$EndSheet
$Sheet
S 3700 4400 950  550 
U 5DA5B106
F0 "Recepteur" 50
F1 "recepteur.sch" 50
F2 "sig_e" I L 3700 4850 50 
F3 "sig_s" O R 4650 4850 50 
$EndSheet
Text GLabel 3500 4150 0    50   Output ~ 0
em
Wire Wire Line
	3700 4150 3500 4150
Text GLabel 3500 4850 0    50   Input ~ 0
rep
Wire Wire Line
	3500 4850 3700 4850
Text GLabel 4900 4850 2    50   Output ~ 0
C1
Wire Wire Line
	4650 4850 4900 4850
Text Notes 1600 4250 0    50   ~ 0
connection CNY70\nentrée: VCC, em\nsortie: rep
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5DA707C9
P 3800 2100
F 0 "H1" H 3900 2149 50  0000 L CNN
F 1 "MountingHole_Pad" H 3900 2058 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 3800 2100 50  0001 C CNN
F 3 "~" H 3800 2100 50  0001 C CNN
	1    3800 2100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5DA70C39
P 4800 2100
F 0 "H2" H 4900 2149 50  0000 L CNN
F 1 "MountingHole_Pad" H 4900 2058 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 4800 2100 50  0001 C CNN
F 3 "~" H 4800 2100 50  0001 C CNN
	1    4800 2100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5DA70EE1
P 5750 2100
F 0 "H3" H 5850 2149 50  0000 L CNN
F 1 "MountingHole_Pad" H 5850 2058 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 5750 2100 50  0001 C CNN
F 3 "~" H 5750 2100 50  0001 C CNN
	1    5750 2100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5DA714F5
P 6650 2050
F 0 "H4" H 6750 2099 50  0000 L CNN
F 1 "MountingHole_Pad" H 6750 2008 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 6650 2050 50  0001 C CNN
F 3 "~" H 6650 2050 50  0001 C CNN
	1    6650 2050
	1    0    0    -1  
$EndComp
$Comp
L capteur_IR-rescue:GND-power #PWR0101
U 1 1 5DA71B7B
P 3800 2300
F 0 "#PWR0101" H 3800 2050 50  0001 C CNN
F 1 "GND-power" H 3805 2127 50  0000 C CNN
F 2 "" H 3800 2300 50  0001 C CNN
F 3 "" H 3800 2300 50  0001 C CNN
	1    3800 2300
	1    0    0    -1  
$EndComp
$Comp
L capteur_IR-rescue:GND-power #PWR0102
U 1 1 5DA71E3D
P 4800 2300
F 0 "#PWR0102" H 4800 2050 50  0001 C CNN
F 1 "GND-power" H 4805 2127 50  0000 C CNN
F 2 "" H 4800 2300 50  0001 C CNN
F 3 "" H 4800 2300 50  0001 C CNN
	1    4800 2300
	1    0    0    -1  
$EndComp
$Comp
L capteur_IR-rescue:GND-power #PWR0103
U 1 1 5DA7219B
P 5750 2300
F 0 "#PWR0103" H 5750 2050 50  0001 C CNN
F 1 "GND-power" H 5755 2127 50  0000 C CNN
F 2 "" H 5750 2300 50  0001 C CNN
F 3 "" H 5750 2300 50  0001 C CNN
	1    5750 2300
	1    0    0    -1  
$EndComp
$Comp
L capteur_IR-rescue:GND-power #PWR0104
U 1 1 5DA723E2
P 6650 2300
F 0 "#PWR0104" H 6650 2050 50  0001 C CNN
F 1 "GND-power" H 6655 2127 50  0000 C CNN
F 2 "" H 6650 2300 50  0001 C CNN
F 3 "" H 6650 2300 50  0001 C CNN
	1    6650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2200 3800 2300
Wire Wire Line
	4800 2200 4800 2300
Wire Wire Line
	5750 2200 5750 2300
Wire Wire Line
	6650 2150 6650 2300
$EndSCHEMATC
