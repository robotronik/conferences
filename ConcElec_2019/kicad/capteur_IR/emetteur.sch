EESchema Schematic File Version 4
LIBS:capteur_IR-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L capteur_IR-rescue:NE555-Timer U1
U 1 1 5DA5B647
P 4250 3650
F 0 "U1" H 4250 4228 50  0000 C CNN
F 1 "NE555" H 4250 4137 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4250 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 4250 3650 50  0001 C CNN
	1    4250 3650
	1    0    0    -1  
$EndComp
$Comp
L capteur_IR-rescue:+5V-power #PWR07
U 1 1 5DA5B744
P 4250 2950
F 0 "#PWR07" H 4250 2800 50  0001 C CNN
F 1 "+5V" H 4265 3123 50  0000 C CNN
F 2 "" H 4250 2950 50  0001 C CNN
F 3 "" H 4250 2950 50  0001 C CNN
	1    4250 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3250 4250 2950
$Comp
L capteur_IR-rescue:+5V-power #PWR05
U 1 1 5DA5B76B
P 3600 3800
F 0 "#PWR05" H 3600 3650 50  0001 C CNN
F 1 "+5V" H 3615 3973 50  0000 C CNN
F 2 "" H 3600 3800 50  0001 C CNN
F 3 "" H 3600 3800 50  0001 C CNN
	1    3600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3850 3600 3800
Text HLabel 5000 3450 2    50   Output ~ 0
Q
Wire Wire Line
	4750 3450 5000 3450
$Comp
L capteur_IR-rescue:C-Device C2
U 1 1 5DA5B7CC
P 3700 4150
F 0 "C2" H 3815 4196 50  0000 L CNN
F 1 "100n" H 3815 4105 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 3738 4000 50  0001 C CNN
F 3 "~" H 3700 4150 50  0001 C CNN
	1    3700 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3650 3700 3650
Wire Wire Line
	3700 3650 3700 4000
Wire Wire Line
	3750 3850 3600 3850
$Comp
L capteur_IR-rescue:GND-power #PWR06
U 1 1 5DA5B8F3
P 3700 4400
F 0 "#PWR06" H 3700 4150 50  0001 C CNN
F 1 "GND" H 3705 4227 50  0000 C CNN
F 2 "" H 3700 4400 50  0001 C CNN
F 3 "" H 3700 4400 50  0001 C CNN
	1    3700 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4400 3700 4300
Wire Wire Line
	4250 4050 4250 4400
Wire Wire Line
	4250 4400 3700 4400
Connection ~ 3700 4400
$Comp
L capteur_IR-rescue:C-Device C1
U 1 1 5DA5B9CF
P 3450 4750
F 0 "C1" H 3565 4796 50  0000 L CNN
F 1 "10n" H 3565 4705 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 3488 4600 50  0001 C CNN
F 3 "~" H 3450 4750 50  0001 C CNN
	1    3450 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3450 3450 4600
Wire Wire Line
	3450 4600 4750 4600
Wire Wire Line
	4750 4600 4750 3850
Connection ~ 3450 4600
$Comp
L capteur_IR-rescue:R-Device R2
U 1 1 5DA5BB84
P 5000 4200
F 0 "R2" H 5070 4246 50  0000 L CNN
F 1 "6.8k" H 5070 4155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4930 4200 50  0001 C CNN
F 3 "~" H 5000 4200 50  0001 C CNN
	1    5000 4200
	1    0    0    -1  
$EndComp
$Comp
L capteur_IR-rescue:R-Device R3
U 1 1 5DA5BBCE
P 5250 3650
F 0 "R3" V 5043 3650 50  0000 C CNN
F 1 "2.7k" V 5134 3650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5180 3650 50  0001 C CNN
F 3 "~" H 5250 3650 50  0001 C CNN
	1    5250 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 3650 5000 3650
Wire Wire Line
	5000 3650 5000 4050
Wire Wire Line
	5000 4350 5000 4600
Wire Wire Line
	5000 4600 4750 4600
Connection ~ 4750 4600
$Comp
L capteur_IR-rescue:GND-power #PWR04
U 1 1 5DA5BF24
P 3450 5000
F 0 "#PWR04" H 3450 4750 50  0001 C CNN
F 1 "GND" H 3455 4827 50  0000 C CNN
F 2 "" H 3450 5000 50  0001 C CNN
F 3 "" H 3450 5000 50  0001 C CNN
	1    3450 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5000 3450 4900
Wire Wire Line
	5100 3650 5000 3650
Connection ~ 5000 3650
$Comp
L capteur_IR-rescue:+5V-power #PWR08
U 1 1 5DA5C3FA
P 5500 3550
F 0 "#PWR08" H 5500 3400 50  0001 C CNN
F 1 "+5V" H 5515 3723 50  0000 C CNN
F 2 "" H 5500 3550 50  0001 C CNN
F 3 "" H 5500 3550 50  0001 C CNN
	1    5500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3550 5500 3650
Wire Wire Line
	5500 3650 5400 3650
Wire Wire Line
	3450 3450 3750 3450
$EndSCHEMATC
