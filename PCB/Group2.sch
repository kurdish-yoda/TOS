EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 3 6
Title "Tons Of Steppers - Group 2"
Date ""
Rev "2.0"
Comp "Sensa Group"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5350 6375 1    47   Input ~ 0
V_DAT
Wire Wire Line
	5050 6600 5025 6600
Wire Wire Line
	5350 6800 5350 6825
Wire Wire Line
	5350 6400 5350 6375
$Comp
L Device:R_Small R?
U 1 1 5F8C28BA
P 4925 6600
AR Path="/5F8C28BA" Ref="R?"  Part="1" 
AR Path="/5F75BE7E/5F8C28BA" Ref="R4"  Part="1" 
F 0 "R4" V 4850 6600 50  0000 C CNN
F 1 "1k" V 4925 6600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 4925 6600 50  0001 C CNN
F 3 "~" H 4925 6600 50  0001 C CNN
	1    4925 6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4825 6600 4800 6600
Text GLabel 3350 6350 1    47   Input ~ 0
V_DAT
Wire Wire Line
	3050 6575 3025 6575
Wire Wire Line
	3350 6775 3350 6800
Wire Wire Line
	3350 6375 3350 6350
$Comp
L Device:R_Small R?
U 1 1 5F8C28CB
P 2925 6575
AR Path="/5F8C28CB" Ref="R?"  Part="1" 
AR Path="/5F75BE7E/5F8C28CB" Ref="R3"  Part="1" 
F 0 "R3" V 2850 6575 50  0000 C CNN
F 1 "1k" V 2925 6575 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2925 6575 50  0001 C CNN
F 3 "~" H 2925 6575 50  0001 C CNN
	1    2925 6575
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2825 6575 2800 6575
Text HLabel 2800 6575 0    59   Input ~ 0
DIR2_EN
Text Label 5350 6825 3    47   ~ 0
STEP2
Text Label 3350 6800 3    47   ~ 0
DIR2
Wire Notes Line
	2075 4475 6600 4475
Text Notes 5875 4425 0    98   ~ 0
Stepper 1
Wire Notes Line
	2075 5850 6600 5850
Text Notes 5875 5800 0    98   ~ 0
Stepper 2
Wire Notes Line
	6575 7725 6550 7725
Text Notes 5200 7350 0    98   ~ 0
Signal Processing
Wire Notes Line
	2050 7400 6575 7400
Text HLabel 4800 6600 0    59   Input ~ 0
STEP2_EN
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5FDA2993
P 3250 6575
AR Path="/5F75D8A5/5FDA2993" Ref="Q?"  Part="1" 
AR Path="/5F75BE7E/5FDA2993" Ref="Q3"  Part="1" 
F 0 "Q3" H 3441 6621 50  0000 L CNN
F 1 "Q_NPN_BCE" H 3441 6530 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3_Handsoldering" H 3450 6675 50  0001 C CNN
F 3 "~" H 3250 6575 50  0001 C CNN
	1    3250 6575
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5FDA630C
P 5250 6600
AR Path="/5F75D8A5/5FDA630C" Ref="Q?"  Part="1" 
AR Path="/5F75BE7E/5FDA630C" Ref="Q4"  Part="1" 
F 0 "Q4" H 5441 6646 50  0000 L CNN
F 1 "Q_NPN_BCE" H 5441 6555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3_Handsoldering" H 5450 6700 50  0001 C CNN
F 3 "~" H 5250 6600 50  0001 C CNN
	1    5250 6600
	1    0    0    -1  
$EndComp
Text Label 4350 3725 3    47   ~ 0
STEP2
Text Label 4550 3725 3    47   ~ 0
DIR2
$Comp
L Connector:Conn_01x12_Male J?
U 1 1 5FDFD249
P 4350 3325
AR Path="/5F75B229/5FDFD249" Ref="J?"  Part="1" 
AR Path="/5F75BE7E/5FDFD249" Ref="J8"  Part="1" 
F 0 "J8" V 4185 3253 50  0000 C CNN
F 1 "Conn_01x12_Male" V 4276 3253 50  0000 C CNN
F 2 "TonsOfSteppers:Molex_12PIN" H 4350 3325 50  0001 C CNN
F 3 "~" H 4350 3325 50  0001 C CNN
	1    4350 3325
	0    1    1    0   
$EndComp
NoConn ~ 4850 3525
$Comp
L power:GND #PWR0121
U 1 1 5FDFD250
P 4650 3900
AR Path="/5F75BE7E/5FDFD250" Ref="#PWR0121"  Part="1" 
AR Path="/5F75B229/5FDFD250" Ref="#PWR?"  Part="1" 
F 0 "#PWR0121" H 4650 3650 50  0001 C CNN
F 1 "GND" H 4655 3727 50  0000 C CNN
F 2 "" H 4650 3900 50  0001 C CNN
F 3 "" H 4650 3900 50  0001 C CNN
	1    4650 3900
	1    0    0    -1  
$EndComp
Text GLabel 3750 3725 3    47   Input ~ 0
V_MOT
$Comp
L Connector:Conn_01x04_Female G5_Con?
U 1 1 5FDFD257
P 4150 4300
AR Path="/5FDFD257" Ref="G5_Con?"  Part="1" 
AR Path="/5F75CBF4/5FDFD257" Ref="G5_Con?"  Part="1" 
AR Path="/5F736439/5FDFD257" Ref="G5_Con?"  Part="1" 
AR Path="/5F739ED7/5FDFD257" Ref="G5_Con?"  Part="1" 
AR Path="/5F75B229/5FDFD257" Ref="G5_Con?"  Part="1" 
AR Path="/5F75BE7E/5FDFD257" Ref="G5_Con7"  Part="1" 
F 0 "G5_Con7" V 4125 3725 50  0000 L CNN
F 1 "Conn_01x04_Female" V 4088 4448 50  0001 L CNN
F 2 "Connector_JST:JST_EH_S4B-EH_1x04_P2.50mm_Horizontal" H 4150 4300 50  0001 C CNN
F 3 "~" H 4150 4300 50  0001 C CNN
	1    4150 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 3525 3950 4100
Wire Wire Line
	4050 3525 4050 4100
Wire Wire Line
	4150 3525 4150 4100
Wire Wire Line
	4250 3525 4250 4100
Wire Wire Line
	4350 3525 4350 3725
Wire Wire Line
	4550 3525 4550 3725
$Comp
L power:GND #PWR0122
U 1 1 5FDFD263
P 4450 3900
AR Path="/5F75BE7E/5FDFD263" Ref="#PWR0122"  Part="1" 
AR Path="/5F75B229/5FDFD263" Ref="#PWR?"  Part="1" 
F 0 "#PWR0122" H 4450 3650 50  0001 C CNN
F 1 "GND" H 4455 3727 50  0000 C CNN
F 2 "" H 4450 3900 50  0001 C CNN
F 3 "" H 4450 3900 50  0001 C CNN
	1    4450 3900
	1    0    0    -1  
$EndComp
NoConn ~ 4750 3525
Wire Wire Line
	4450 3525 4450 3900
Wire Wire Line
	4650 3525 4650 3900
$Comp
L power:GND #PWR0123
U 1 1 5FDFD26C
P 3850 3900
AR Path="/5F75BE7E/5FDFD26C" Ref="#PWR0123"  Part="1" 
AR Path="/5F75B229/5FDFD26C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0123" H 3850 3650 50  0001 C CNN
F 1 "GND" H 3855 3727 50  0000 C CNN
F 2 "" H 3850 3900 50  0001 C CNN
F 3 "" H 3850 3900 50  0001 C CNN
	1    3850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3525 3850 3900
Wire Wire Line
	3750 3525 3750 3725
Text Label 4325 5125 3    47   ~ 0
STEP2
Text Label 4525 5125 3    47   ~ 0
DIR2
$Comp
L Connector:Conn_01x12_Male J?
U 1 1 5FE04782
P 4325 4725
AR Path="/5F75B229/5FE04782" Ref="J?"  Part="1" 
AR Path="/5F75BE7E/5FE04782" Ref="J7"  Part="1" 
F 0 "J7" V 4160 4653 50  0000 C CNN
F 1 "Conn_01x12_Male" V 4251 4653 50  0000 C CNN
F 2 "TonsOfSteppers:Molex_12PIN" H 4325 4725 50  0001 C CNN
F 3 "~" H 4325 4725 50  0001 C CNN
	1    4325 4725
	0    1    1    0   
$EndComp
NoConn ~ 4825 4925
$Comp
L power:GND #PWR0124
U 1 1 5FE04789
P 4625 5300
AR Path="/5F75BE7E/5FE04789" Ref="#PWR0124"  Part="1" 
AR Path="/5F75B229/5FE04789" Ref="#PWR?"  Part="1" 
F 0 "#PWR0124" H 4625 5050 50  0001 C CNN
F 1 "GND" H 4630 5127 50  0000 C CNN
F 2 "" H 4625 5300 50  0001 C CNN
F 3 "" H 4625 5300 50  0001 C CNN
	1    4625 5300
	1    0    0    -1  
$EndComp
Text GLabel 3725 5125 3    47   Input ~ 0
V_MOT
$Comp
L Connector:Conn_01x04_Female G5_Con?
U 1 1 5FE04790
P 4125 5700
AR Path="/5FE04790" Ref="G5_Con?"  Part="1" 
AR Path="/5F75CBF4/5FE04790" Ref="G5_Con?"  Part="1" 
AR Path="/5F736439/5FE04790" Ref="G5_Con?"  Part="1" 
AR Path="/5F739ED7/5FE04790" Ref="G5_Con?"  Part="1" 
AR Path="/5F75B229/5FE04790" Ref="G5_Con?"  Part="1" 
AR Path="/5F75BE7E/5FE04790" Ref="G5_Con6"  Part="1" 
F 0 "G5_Con6" V 4100 5125 50  0000 L CNN
F 1 "Conn_01x04_Female" V 4063 5848 50  0001 L CNN
F 2 "Connector_JST:JST_EH_S4B-EH_1x04_P2.50mm_Horizontal" H 4125 5700 50  0001 C CNN
F 3 "~" H 4125 5700 50  0001 C CNN
	1    4125 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	3925 4925 3925 5500
Wire Wire Line
	4025 4925 4025 5500
Wire Wire Line
	4125 4925 4125 5500
Wire Wire Line
	4225 4925 4225 5500
Wire Wire Line
	4325 4925 4325 5125
Wire Wire Line
	4525 4925 4525 5125
$Comp
L power:GND #PWR0125
U 1 1 5FE0479C
P 4425 5300
AR Path="/5F75BE7E/5FE0479C" Ref="#PWR0125"  Part="1" 
AR Path="/5F75B229/5FE0479C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0125" H 4425 5050 50  0001 C CNN
F 1 "GND" H 4430 5127 50  0000 C CNN
F 2 "" H 4425 5300 50  0001 C CNN
F 3 "" H 4425 5300 50  0001 C CNN
	1    4425 5300
	1    0    0    -1  
$EndComp
NoConn ~ 4725 4925
Wire Wire Line
	4425 4925 4425 5300
Wire Wire Line
	4625 4925 4625 5300
$Comp
L power:GND #PWR0126
U 1 1 5FE047A5
P 3825 5300
AR Path="/5F75BE7E/5FE047A5" Ref="#PWR0126"  Part="1" 
AR Path="/5F75B229/5FE047A5" Ref="#PWR?"  Part="1" 
F 0 "#PWR0126" H 3825 5050 50  0001 C CNN
F 1 "GND" H 3830 5127 50  0000 C CNN
F 2 "" H 3825 5300 50  0001 C CNN
F 3 "" H 3825 5300 50  0001 C CNN
	1    3825 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3825 4925 3825 5300
Wire Wire Line
	3725 4925 3725 5125
$EndSCHEMATC
