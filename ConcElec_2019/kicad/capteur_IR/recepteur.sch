EESchema Schematic File Version 4
LIBS:capteur_IR-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L capteur_IR-rescue:LM324-Amplifier_Operational U2
U 1 1 5DA5CA92
P 2600 3400
AR Path="/5DA5CA92" Ref="U2"  Part="1" 
AR Path="/5DA5B106/5DA5CA92" Ref="U2"  Part="1" 
F 0 "U2" H 2600 3033 50  0000 C CNN
F 1 "LM324" H 2600 3124 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 2550 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2650 3600 50  0001 C CNN
	1    2600 3400
	1    0    0    1   
$EndComp
$Comp
L capteur_IR-rescue:LM324-Amplifier_Operational U2
U 5 1 5DA5CB25
P 1150 4300
AR Path="/5DA5CB25" Ref="U2"  Part="5" 
AR Path="/5DA5B106/5DA5CB25" Ref="U2"  Part="5" 
F 0 "U2" H 1108 4346 50  0000 L CNN
F 1 "LM324" H 1108 4255 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 1100 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1200 4500 50  0001 C CNN
	5    1150 4300
	1    0    0    -1  
$EndComp
Text HLabel 1550 3300 0    50   Input ~ 0
sig_e
$Comp
L capteur_IR-rescue:R-Device R4
U 1 1 5DA5CC54
P 1700 3500
F 0 "R4" H 1770 3546 50  0000 L CNN
F 1 "510" H 1770 3455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1630 3500 50  0001 C CNN
F 3 "~" H 1700 3500 50  0001 C CNN
	1    1700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3350 1700 3300
Wire Wire Line
	1700 3300 1550 3300
$Comp
L capteur_IR-rescue:GND-power #PWR011
U 1 1 5DA5CCC5
P 1700 3750
F 0 "#PWR011" H 1700 3500 50  0001 C CNN
F 1 "GND" H 1705 3577 50  0000 C CNN
F 2 "" H 1700 3750 50  0001 C CNN
F 3 "" H 1700 3750 50  0001 C CNN
	1    1700 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3650 1700 3750
$Comp
L capteur_IR-rescue:C-Device C3
U 1 1 5DA5CDA5
P 2050 3300
F 0 "C3" V 1798 3300 50  0000 C CNN
F 1 "1u" V 1889 3300 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 2088 3150 50  0001 C CNN
F 3 "~" H 2050 3300 50  0001 C CNN
	1    2050 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 3300 1700 3300
Connection ~ 1700 3300
$Comp
L capteur_IR-rescue:R-Device R6
U 1 1 5DA5CF1A
P 2400 2900
F 0 "R6" V 2193 2900 50  0000 C CNN
F 1 "33k" V 2284 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2330 2900 50  0001 C CNN
F 3 "~" H 2400 2900 50  0001 C CNN
	1    2400 2900
	0    1    1    0   
$EndComp
$Comp
L capteur_IR-rescue:R-Device R7
U 1 1 5DA5CF62
P 2800 2900
F 0 "R7" V 2593 2900 50  0000 C CNN
F 1 "33k" V 2684 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2730 2900 50  0001 C CNN
F 3 "~" H 2800 2900 50  0001 C CNN
	1    2800 2900
	0    1    1    0   
$EndComp
$Comp
L capteur_IR-rescue:C-Device C4
U 1 1 5DA5CFAC
P 2600 2600
F 0 "C4" V 2348 2600 50  0000 C CNN
F 1 "1n" V 2439 2600 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 2638 2450 50  0001 C CNN
F 3 "~" H 2600 2600 50  0001 C CNN
	1    2600 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 3300 2250 3300
Wire Wire Line
	2250 3300 2250 2900
Wire Wire Line
	2250 2900 2250 2600
Wire Wire Line
	2250 2600 2450 2600
Connection ~ 2250 2900
Wire Wire Line
	2750 2600 2950 2600
Wire Wire Line
	2950 2600 2950 2900
Wire Wire Line
	2650 2900 2600 2900
Wire Wire Line
	2300 3300 2250 3300
Connection ~ 2250 3300
$Comp
L capteur_IR-rescue:+5V-power #PWR09
U 1 1 5DA5D462
P 1050 3900
F 0 "#PWR09" H 1050 3750 50  0001 C CNN
F 1 "+5V" H 1065 4073 50  0000 C CNN
F 2 "" H 1050 3900 50  0001 C CNN
F 3 "" H 1050 3900 50  0001 C CNN
	1    1050 3900
	1    0    0    -1  
$EndComp
$Comp
L capteur_IR-rescue:GND-power #PWR010
U 1 1 5DA5D499
P 1050 4700
F 0 "#PWR010" H 1050 4450 50  0001 C CNN
F 1 "GND" H 1055 4527 50  0000 C CNN
F 2 "" H 1050 4700 50  0001 C CNN
F 3 "" H 1050 4700 50  0001 C CNN
	1    1050 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 4000 1050 3900
Wire Wire Line
	1050 4600 1050 4700
$Comp
L capteur_IR-rescue:R-Device R5
U 1 1 5DA5D6CD
P 2250 3700
F 0 "R5" H 2320 3746 50  0000 L CNN
F 1 "1k" H 2320 3655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2180 3700 50  0001 C CNN
F 3 "~" H 2250 3700 50  0001 C CNN
	1    2250 3700
	1    0    0    -1  
$EndComp
$Comp
L capteur_IR-rescue:GND-power #PWR012
U 1 1 5DA5D7DD
P 2250 3900
F 0 "#PWR012" H 2250 3650 50  0001 C CNN
F 1 "GND" H 2255 3727 50  0000 C CNN
F 2 "" H 2250 3900 50  0001 C CNN
F 3 "" H 2250 3900 50  0001 C CNN
	1    2250 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3900 2250 3850
Wire Wire Line
	2250 3550 2250 3500
Wire Wire Line
	2250 3500 2300 3500
$Comp
L capteur_IR-rescue:C-Device C5
U 1 1 5DA5DB27
P 2600 3750
F 0 "C5" H 2715 3796 50  0000 L CNN
F 1 "1u" H 2715 3705 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 2638 3600 50  0001 C CNN
F 3 "~" H 2600 3750 50  0001 C CNN
	1    2600 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2900 2600 3600
Connection ~ 2600 2900
Wire Wire Line
	2600 2900 2550 2900
$Comp
L capteur_IR-rescue:GND-power #PWR013
U 1 1 5DA5DEE2
P 2600 3950
F 0 "#PWR013" H 2600 3700 50  0001 C CNN
F 1 "GND" H 2605 3777 50  0000 C CNN
F 2 "" H 2600 3950 50  0001 C CNN
F 3 "" H 2600 3950 50  0001 C CNN
	1    2600 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3900 2600 3950
Wire Wire Line
	2950 2900 2950 3400
Wire Wire Line
	2950 3400 2900 3400
Connection ~ 2950 2900
$Comp
L capteur_IR-rescue:D-Device D1
U 1 1 5DA5E703
P 3150 3400
F 0 "D1" H 3150 3184 50  0000 C CNN
F 1 "D" H 3150 3275 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P10.16mm_Horizontal" H 3150 3400 50  0001 C CNN
F 3 "~" H 3150 3400 50  0001 C CNN
	1    3150 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 3400 2950 3400
Connection ~ 2950 3400
$Comp
L capteur_IR-rescue:C-Device C6
U 1 1 5DA5E986
P 3400 3650
F 0 "C6" H 3515 3696 50  0000 L CNN
F 1 "10n" H 3515 3605 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 3438 3500 50  0001 C CNN
F 3 "~" H 3400 3650 50  0001 C CNN
	1    3400 3650
	1    0    0    -1  
$EndComp
$Comp
L capteur_IR-rescue:R-Device R8
U 1 1 5DA5E9DD
P 3700 3650
F 0 "R8" H 3770 3696 50  0000 L CNN
F 1 "39k" H 3770 3605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3630 3650 50  0001 C CNN
F 3 "~" H 3700 3650 50  0001 C CNN
	1    3700 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3500 3700 3400
Wire Wire Line
	3700 3400 3400 3400
Wire Wire Line
	3400 3500 3400 3400
Connection ~ 3400 3400
Wire Wire Line
	3400 3400 3300 3400
$Comp
L capteur_IR-rescue:GND-power #PWR014
U 1 1 5DA5EFBB
P 3550 4000
F 0 "#PWR014" H 3550 3750 50  0001 C CNN
F 1 "GND" H 3555 3827 50  0000 C CNN
F 2 "" H 3550 4000 50  0001 C CNN
F 3 "" H 3550 4000 50  0001 C CNN
	1    3550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3800 3700 4000
Wire Wire Line
	3700 4000 3550 4000
Wire Wire Line
	3550 4000 3400 4000
Wire Wire Line
	3400 4000 3400 3800
Connection ~ 3550 4000
Text HLabel 4000 3400 2    50   Output ~ 0
sig_s
Wire Wire Line
	4000 3400 3700 3400
Connection ~ 3700 3400
$EndSCHEMATC
