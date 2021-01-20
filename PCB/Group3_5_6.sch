EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 4 6
Title "Tons Of Steppers - Group 3,5,6"
Date ""
Rev "2.0"
Comp "Sensa Group"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4400 4275 4400 4250
Wire Wire Line
	4400 4250 4500 4250
Wire Wire Line
	4500 4250 4500 4275
Wire Wire Line
	3600 4250 3600 4275
Wire Wire Line
	3700 4250 3700 4275
Wire Wire Line
	3800 4250 3800 4275
Wire Notes Line
	2000 3675 6525 3675
Text Notes 5800 3625 0    98   ~ 0
Group 3
Text GLabel 3600 4225 1    47   Input ~ 0
V_DAT
Wire Wire Line
	3700 4250 3600 4250
Wire Wire Line
	3600 4250 3600 4225
Connection ~ 3600 4250
Wire Wire Line
	3700 4250 3800 4250
Connection ~ 3700 4250
Text HLabel 4100 4225 1    47   Input ~ 0
STEP5_EN
Text HLabel 4000 4225 1    47   Input ~ 0
DIR5_EN
Wire Wire Line
	4000 4225 4000 4275
Wire Wire Line
	4100 4225 4100 4275
Connection ~ 3275 4875
Wire Wire Line
	3275 4675 3300 4675
Wire Wire Line
	3275 4875 3275 4675
Wire Wire Line
	3275 4875 3275 4900
Wire Wire Line
	3300 4875 3275 4875
Connection ~ 4850 4875
Wire Wire Line
	4900 4875 4900 4800
Wire Wire Line
	4850 4875 4900 4875
Wire Wire Line
	4850 4875 4850 4925
Wire Wire Line
	4800 4875 4850 4875
Text GLabel 4900 4800 1    47   Input ~ 0
V_MOT
Wire Wire Line
	4800 4600 4800 4675
Text GLabel 4800 4600 1    47   Input ~ 0
V_DAT
Text Notes 5800 5550 0    98   ~ 0
Group 5
Wire Notes Line
	2000 5600 6525 5600
NoConn ~ 4200 4275
$Comp
L power:GND #e?
U 1 1 5F9585FA
P 3275 4900
AR Path="/5F9585FA" Ref="#e?"  Part="1" 
AR Path="/5F75CBF4/5F9585FA" Ref="#e01"  Part="1" 
AR Path="/5F736439/5F9585FA" Ref="#e?"  Part="1" 
AR Path="/5F739ED7/5F9585FA" Ref="#e?"  Part="1" 
F 0 "#e01" H 3275 4650 50  0001 C CNN
F 1 "GND" H 3363 4863 50  0001 L CNN
F 2 "" H 3275 4900 50  0001 C CNN
F 3 "" H 3275 4900 50  0001 C CNN
	1    3275 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #e?
U 1 1 5F9585F3
P 4850 5150
AR Path="/5F9585F3" Ref="#e?"  Part="1" 
AR Path="/5F75CBF4/5F9585F3" Ref="#e03"  Part="1" 
AR Path="/5F736439/5F9585F3" Ref="#e?"  Part="1" 
AR Path="/5F739ED7/5F9585F3" Ref="#e?"  Part="1" 
F 0 "#e03" H 4850 4900 50  0001 C CNN
F 1 "GND" H 4938 5113 50  0001 L CNN
F 2 "" H 4850 5150 50  0001 C CNN
F 3 "" H 4850 5150 50  0001 C CNN
	1    4850 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 5F9585ED
P 4850 5025
AR Path="/5F9585ED" Ref="C?"  Part="1" 
AR Path="/5F75CBF4/5F9585ED" Ref="C1"  Part="1" 
AR Path="/5F736439/5F9585ED" Ref="C?"  Part="1" 
AR Path="/5F739ED7/5F9585ED" Ref="C?"  Part="1" 
F 0 "C1" H 4650 4925 50  0000 L CNN
F 1 "100uf" H 4500 4850 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 4850 5025 50  0001 C CNN
F 3 "~" H 4850 5025 50  0001 C CNN
	1    4850 5025
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5175 4200 5200
Wire Wire Line
	4100 5200 4100 5175
Wire Wire Line
	4000 5175 4000 5200
Wire Wire Line
	3900 5175 3900 5200
$Comp
L Connector:Conn_01x04_Female G5_Con?
U 1 1 5F9585DF
P 4100 5400
AR Path="/5F9585DF" Ref="G5_Con?"  Part="1" 
AR Path="/5F75CBF4/5F9585DF" Ref="G5_Con1"  Part="1" 
AR Path="/5F736439/5F9585DF" Ref="G5_Con?"  Part="1" 
AR Path="/5F739ED7/5F9585DF" Ref="G5_Con?"  Part="1" 
F 0 "G5_Con1" V 3900 4825 50  0000 L CNN
F 1 "Conn_01x04_Female" V 4038 5548 50  0001 L CNN
F 2 "Connector_JST:JST_EH_S4B-EH_1x04_P2.50mm_Horizontal" H 4100 5400 50  0001 C CNN
F 3 "~" H 4100 5400 50  0001 C CNN
	1    4100 5400
	0    1    1    0   
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A?
U 1 1 5F9585D9
P 4100 4675
AR Path="/5F9585D9" Ref="A?"  Part="1" 
AR Path="/5F75CBF4/5F9585D9" Ref="A1"  Part="1" 
AR Path="/5F736439/5F9585D9" Ref="A?"  Part="1" 
AR Path="/5F739ED7/5F9585D9" Ref="A?"  Part="1" 
F 0 "A1" H 4200 4975 50  0000 C CNN
F 1 "Pololu" H 4275 4900 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 4375 3925 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 4200 4375 50  0001 C CNN
	1    4100 4675
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 5125 4850 5150
Wire Notes Line
	6525 8225 6500 8225
Wire Wire Line
	4400 6250 4400 6225
Wire Wire Line
	4400 6225 4500 6225
Wire Wire Line
	4500 6225 4500 6250
Wire Wire Line
	3600 6225 3600 6250
Wire Wire Line
	3700 6225 3700 6250
Wire Wire Line
	3800 6225 3800 6250
Text GLabel 3600 6200 1    47   Input ~ 0
V_DAT
Wire Wire Line
	3700 6225 3600 6225
Wire Wire Line
	3600 6225 3600 6200
Connection ~ 3600 6225
Wire Wire Line
	3700 6225 3800 6225
Connection ~ 3700 6225
Text HLabel 4100 6200 1    47   Input ~ 0
STEP6_EN
Text HLabel 4000 6200 1    47   Input ~ 0
DIR6_EN
Wire Wire Line
	4000 6200 4000 6250
Wire Wire Line
	4100 6200 4100 6250
Connection ~ 3275 6850
Wire Wire Line
	3275 6650 3300 6650
Wire Wire Line
	3275 6850 3275 6650
Wire Wire Line
	3275 6850 3275 6875
Wire Wire Line
	3300 6850 3275 6850
Connection ~ 4850 6850
Wire Wire Line
	4900 6850 4900 6775
Wire Wire Line
	4850 6850 4900 6850
Wire Wire Line
	4850 6850 4850 6900
Wire Wire Line
	4800 6850 4850 6850
Text GLabel 4900 6775 1    47   Input ~ 0
V_MOT
Wire Wire Line
	4800 6575 4800 6650
Text GLabel 4800 6575 1    47   Input ~ 0
V_DAT
Text Notes 5800 7525 0    98   ~ 0
Group 6
Wire Notes Line
	2000 7575 6525 7575
NoConn ~ 4200 6250
$Comp
L power:GND #e?
U 1 1 5FA3D7C8
P 3275 6875
AR Path="/5FA3D7C8" Ref="#e?"  Part="1" 
AR Path="/5F75CBF4/5FA3D7C8" Ref="#e02"  Part="1" 
AR Path="/5F736439/5FA3D7C8" Ref="#e?"  Part="1" 
AR Path="/5F739ED7/5FA3D7C8" Ref="#e?"  Part="1" 
F 0 "#e02" H 3275 6625 50  0001 C CNN
F 1 "GND" H 3363 6838 50  0001 L CNN
F 2 "" H 3275 6875 50  0001 C CNN
F 3 "" H 3275 6875 50  0001 C CNN
	1    3275 6875
	1    0    0    -1  
$EndComp
$Comp
L power:GND #e?
U 1 1 5FA3D7CE
P 4850 7125
AR Path="/5FA3D7CE" Ref="#e?"  Part="1" 
AR Path="/5F75CBF4/5FA3D7CE" Ref="#e04"  Part="1" 
AR Path="/5F736439/5FA3D7CE" Ref="#e?"  Part="1" 
AR Path="/5F739ED7/5FA3D7CE" Ref="#e?"  Part="1" 
F 0 "#e04" H 4850 6875 50  0001 C CNN
F 1 "GND" H 4938 7088 50  0001 L CNN
F 2 "" H 4850 7125 50  0001 C CNN
F 3 "" H 4850 7125 50  0001 C CNN
	1    4850 7125
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 5FA3D7D4
P 4850 7000
AR Path="/5FA3D7D4" Ref="C?"  Part="1" 
AR Path="/5F75CBF4/5FA3D7D4" Ref="C2"  Part="1" 
AR Path="/5F736439/5FA3D7D4" Ref="C?"  Part="1" 
AR Path="/5F739ED7/5FA3D7D4" Ref="C?"  Part="1" 
F 0 "C2" H 4650 6900 50  0000 L CNN
F 1 "100uf" H 4500 6825 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 4850 7000 50  0001 C CNN
F 3 "~" H 4850 7000 50  0001 C CNN
	1    4850 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 7150 4200 7175
Wire Wire Line
	4100 7175 4100 7150
Wire Wire Line
	4000 7150 4000 7175
Wire Wire Line
	3900 7150 3900 7175
$Comp
L Connector:Conn_01x04_Female G6_Con?
U 1 1 5FA3D7DE
P 4100 7375
AR Path="/5FA3D7DE" Ref="G6_Con?"  Part="1" 
AR Path="/5F75CBF4/5FA3D7DE" Ref="G6_Con1"  Part="1" 
AR Path="/5F736439/5FA3D7DE" Ref="G6_Con?"  Part="1" 
AR Path="/5F739ED7/5FA3D7DE" Ref="G6_Con?"  Part="1" 
F 0 "G6_Con1" V 3900 6800 50  0000 L CNN
F 1 "Conn_01x04_Female" V 4038 7523 50  0001 L CNN
F 2 "Connector_JST:JST_EH_S4B-EH_1x04_P2.50mm_Horizontal" H 4100 7375 50  0001 C CNN
F 3 "~" H 4100 7375 50  0001 C CNN
	1    4100 7375
	0    1    1    0   
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A?
U 1 1 5FA3D7E4
P 4100 6650
AR Path="/5FA3D7E4" Ref="A?"  Part="1" 
AR Path="/5F75CBF4/5FA3D7E4" Ref="A2"  Part="1" 
AR Path="/5F736439/5FA3D7E4" Ref="A?"  Part="1" 
AR Path="/5F739ED7/5FA3D7E4" Ref="A?"  Part="1" 
F 0 "A2" H 4200 6950 50  0000 C CNN
F 1 "Pololu" H 4275 6875 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 4375 5900 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 4200 6350 50  0001 C CNN
	1    4100 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 7100 4850 7125
Text HLabel 4400 2975 3    47   Input ~ 0
DIR3_EN
$Comp
L Connector:Conn_01x12_Male J?
U 1 1 5FE074E4
P 4200 2575
AR Path="/5F75B229/5FE074E4" Ref="J?"  Part="1" 
AR Path="/5F75CBF4/5FE074E4" Ref="J9"  Part="1" 
F 0 "J9" V 4035 2503 50  0000 C CNN
F 1 "Conn_01x12_Male" V 4126 2503 50  0000 C CNN
F 2 "TonsOfSteppers:Molex_12PIN" H 4200 2575 50  0001 C CNN
F 3 "~" H 4200 2575 50  0001 C CNN
	1    4200 2575
	0    1    1    0   
$EndComp
NoConn ~ 4700 2775
$Comp
L power:GND #PWR?
U 1 1 5FE074EB
P 4500 3150
AR Path="/5F75BE7E/5FE074EB" Ref="#PWR?"  Part="1" 
AR Path="/5F75B229/5FE074EB" Ref="#PWR?"  Part="1" 
AR Path="/5F75CBF4/5FE074EB" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 4500 2900 50  0001 C CNN
F 1 "GND" H 4505 2977 50  0000 C CNN
F 2 "" H 4500 3150 50  0001 C CNN
F 3 "" H 4500 3150 50  0001 C CNN
	1    4500 3150
	1    0    0    -1  
$EndComp
Text GLabel 3600 2975 3    47   Input ~ 0
V_MOT
$Comp
L Connector:Conn_01x04_Female G5_Con?
U 1 1 5FE074F2
P 4000 3550
AR Path="/5FE074F2" Ref="G5_Con?"  Part="1" 
AR Path="/5F75CBF4/5FE074F2" Ref="G5_Con8"  Part="1" 
AR Path="/5F736439/5FE074F2" Ref="G5_Con?"  Part="1" 
AR Path="/5F739ED7/5FE074F2" Ref="G5_Con?"  Part="1" 
AR Path="/5F75B229/5FE074F2" Ref="G5_Con?"  Part="1" 
F 0 "G5_Con8" V 3975 2975 50  0000 L CNN
F 1 "Conn_01x04_Female" V 3938 3698 50  0001 L CNN
F 2 "Connector_JST:JST_EH_S4B-EH_1x04_P2.50mm_Horizontal" H 4000 3550 50  0001 C CNN
F 3 "~" H 4000 3550 50  0001 C CNN
	1    4000 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 2775 3800 3350
Wire Wire Line
	3900 2775 3900 3350
Wire Wire Line
	4000 2775 4000 3350
Wire Wire Line
	4100 2775 4100 3350
Wire Wire Line
	4200 2775 4200 2975
Wire Wire Line
	4400 2775 4400 2975
$Comp
L power:GND #PWR?
U 1 1 5FE074FE
P 4300 3150
AR Path="/5F75BE7E/5FE074FE" Ref="#PWR?"  Part="1" 
AR Path="/5F75B229/5FE074FE" Ref="#PWR?"  Part="1" 
AR Path="/5F75CBF4/5FE074FE" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 4300 2900 50  0001 C CNN
F 1 "GND" H 4305 2977 50  0000 C CNN
F 2 "" H 4300 3150 50  0001 C CNN
F 3 "" H 4300 3150 50  0001 C CNN
	1    4300 3150
	1    0    0    -1  
$EndComp
NoConn ~ 4600 2775
Wire Wire Line
	4300 2775 4300 3150
Wire Wire Line
	4500 2775 4500 3150
$Comp
L power:GND #PWR?
U 1 1 5FE07507
P 3700 3150
AR Path="/5F75BE7E/5FE07507" Ref="#PWR?"  Part="1" 
AR Path="/5F75B229/5FE07507" Ref="#PWR?"  Part="1" 
AR Path="/5F75CBF4/5FE07507" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 3700 2900 50  0001 C CNN
F 1 "GND" H 3705 2977 50  0000 C CNN
F 2 "" H 3700 3150 50  0001 C CNN
F 3 "" H 3700 3150 50  0001 C CNN
	1    3700 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2775 3700 3150
Wire Wire Line
	3600 2775 3600 2975
Text HLabel 4200 2975 3    47   Input ~ 0
STEP3_EN
$EndSCHEMATC
