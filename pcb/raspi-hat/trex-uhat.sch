EESchema Schematic File Version 4
LIBS:trex-uhat-cache
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
L uhat:RPi_GPIO-Connector-ML J2
U 1 1 5516AE26
P 7500 2700
F 0 "J2" H 8250 2950 60  0000 C CNN
F 1 "RPi_GPIO" H 8250 2850 60  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 7500 2700 60  0001 C CNN
F 3 "" H 7500 2700 60  0000 C CNN
	1    7500 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5D6A93BF
P 6650 3000
F 0 "D1" H 6643 2745 50  0000 C CNN
F 1 "LED" H 6643 2836 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6650 3000 50  0001 C CNN
F 3 "~" H 6650 3000 50  0001 C CNN
	1    6650 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5D6A9D33
P 6350 3000
F 0 "R1" V 6143 3000 50  0000 C CNN
F 1 "R" V 6234 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6280 3000 50  0001 C CNN
F 3 "~" H 6350 3000 50  0001 C CNN
	1    6350 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 3000 6800 3000
$Comp
L power:+3.3V #PWR0101
U 1 1 5D6AD8D4
P 7150 2600
F 0 "#PWR0101" H 7150 2450 50  0001 C CNN
F 1 "+3.3V" H 7165 2773 50  0000 C CNN
F 2 "" H 7150 2600 50  0001 C CNN
F 3 "" H 7150 2600 50  0001 C CNN
	1    7150 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2700 7150 2700
Wire Wire Line
	7150 2700 7150 2600
$Comp
L power:GND #PWR0102
U 1 1 5D6AF202
P 9450 2900
F 0 "#PWR0102" H 9450 2650 50  0001 C CNN
F 1 "GND" H 9455 2727 50  0000 C CNN
F 2 "" H 9450 2900 50  0001 C CNN
F 3 "" H 9450 2900 50  0001 C CNN
	1    9450 2900
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0103
U 1 1 5D6AF853
P 6100 2950
F 0 "#PWR0103" H 6100 2800 50  0001 C CNN
F 1 "+3.3V" H 6115 3123 50  0000 C CNN
F 2 "" H 6100 2950 50  0001 C CNN
F 3 "" H 6100 2950 50  0001 C CNN
	1    6100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3000 6100 3000
Wire Wire Line
	6100 3000 6100 2950
$Comp
L Connector:Conn_01x08_Female J1
U 1 1 5D6B04E0
P 4350 2250
F 0 "J1" V 4515 2180 50  0000 C CNN
F 1 "Conn_01x08_Female" V 4424 2180 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 4350 2250 50  0001 C CNN
F 3 "~" H 4350 2250 50  0001 C CNN
	1    4350 2250
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 5D6B3AF7
P 4050 2650
F 0 "#PWR0104" H 4050 2500 50  0001 C CNN
F 1 "+3.3V" V 4065 2778 50  0000 L CNN
F 2 "" H 4050 2650 50  0001 C CNN
F 3 "" H 4050 2650 50  0001 C CNN
	1    4050 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 2450 4050 2650
Wire Wire Line
	4150 2450 4150 3100
Wire Wire Line
	4250 2450 4250 2950
Wire Wire Line
	4350 2450 4350 2950
Wire Wire Line
	4450 2450 4450 2950
Wire Wire Line
	4550 2450 4550 2950
Wire Wire Line
	4650 2450 4650 2950
Wire Wire Line
	4750 2450 4750 2950
Text Label 4750 2500 3    50   ~ 0
EPD_BUSY
Text Label 4650 2850 1    50   ~ 0
EPD_RST
Text Label 4550 2850 1    50   ~ 0
EPD_DC
Text Label 4450 2850 1    50   ~ 0
EPD_CS
Text Label 4350 2850 1    50   ~ 0
EPD_CLK
Text Label 4250 2850 1    50   ~ 0
EPD_DIN
Wire Wire Line
	7300 3200 6800 3200
Text Label 6800 3200 0    50   ~ 0
EPD_RST
Wire Wire Line
	7300 3600 6800 3600
Text Label 6800 3600 0    50   ~ 0
EPD_DIN
Wire Wire Line
	9200 3500 9650 3500
Text Label 9250 3500 0    50   ~ 0
EPD_BUSY
Wire Wire Line
	7300 3800 6800 3800
Text Label 6800 3800 0    50   ~ 0
EPD_CLK
Wire Wire Line
	9200 3800 9650 3800
Text Label 9250 3800 0    50   ~ 0
EPD_CS
Wire Wire Line
	9200 3700 9650 3700
Text Label 9250 3700 0    50   ~ 0
EPD_DC
$Comp
L Connector:Conn_01x03_Female J3
U 1 1 5D6BAF80
P 3900 3800
F 0 "J3" H 3928 3826 50  0000 L CNN
F 1 "Conn_01x03_Female" H 3928 3735 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 3900 3800 50  0001 C CNN
F 3 "~" H 3900 3800 50  0001 C CNN
	1    3900 3800
	-1   0    0    1   
$EndComp
$Comp
L dfplayer:DFPLAYER_MINI J4
U 1 1 AADDEEAA
P 2250 2750
F 0 "J4" H 2200 2300 50  0000 L CNN
F 1 "DFPLAYER_MINI" H 1950 3300 50  0000 L CNN
F 2 "RPi_Hat:DFPlayer_Mini" H 2250 2750 50  0001 C CNN
F 3 "~" H 2250 2750 50  0001 C CNN
	1    2250 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 5D6BCF3E
P 4400 3800
F 0 "#PWR01" H 4400 3650 50  0001 C CNN
F 1 "+3.3V" V 4415 3928 50  0000 L CNN
F 2 "" H 4400 3800 50  0001 C CNN
F 3 "" H 4400 3800 50  0001 C CNN
	1    4400 3800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5D6B4328
P 4150 3100
F 0 "#PWR0105" H 4150 2850 50  0001 C CNN
F 1 "GND" H 4155 2927 50  0000 C CNN
F 2 "" H 4150 3100 50  0001 C CNN
F 3 "" H 4150 3100 50  0001 C CNN
	1    4150 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D6BD90C
P 4400 3900
F 0 "#PWR02" H 4400 3650 50  0001 C CNN
F 1 "GND" H 4405 3727 50  0000 C CNN
F 2 "" H 4400 3900 50  0001 C CNN
F 3 "" H 4400 3900 50  0001 C CNN
	1    4400 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3900 4100 3900
Wire Wire Line
	4400 3800 4100 3800
Wire Wire Line
	4100 3700 4500 3700
Text Label 4100 3700 0    50   ~ 0
MAG_SENSE
Text Label 9250 3900 0    50   ~ 0
MAG_SENSE
Wire Wire Line
	9200 3900 9650 3900
$Comp
L uhat:Pololu_Breakout_DRV8880 A1
U 1 1 5D6AAAE1
P 3650 5950
F 0 "A1" H 3650 5950 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" H 3650 6600 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 3850 5150 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 3750 5650 50  0001 C CNN
	1    3650 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D6B121A
P 3100 3000
F 0 "#PWR07" H 3100 2750 50  0001 C CNN
F 1 "GND" H 3105 2827 50  0000 C CNN
F 2 "" H 3100 3000 50  0001 C CNN
F 3 "" H 3100 3000 50  0001 C CNN
	1    3100 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 3000 2850 3000
$Comp
L power:GND #PWR04
U 1 1 5D6B23F8
P 1550 3000
F 0 "#PWR04" H 1550 2750 50  0001 C CNN
F 1 "GND" H 1555 2827 50  0000 C CNN
F 2 "" H 1550 3000 50  0001 C CNN
F 3 "" H 1550 3000 50  0001 C CNN
	1    1550 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 3000 1550 3000
$Comp
L power:GND #PWR06
U 1 1 5D6B2DDB
P 3700 6950
F 0 "#PWR06" H 3700 6700 50  0001 C CNN
F 1 "GND" H 3705 6777 50  0000 C CNN
F 2 "" H 3700 6950 50  0001 C CNN
F 3 "" H 3700 6950 50  0001 C CNN
	1    3700 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 6750 3750 6950
Wire Wire Line
	3750 6950 3700 6950
Wire Wire Line
	3700 6950 3650 6950
Wire Wire Line
	3650 6950 3650 6750
Connection ~ 3700 6950
$Comp
L power:+12V #PWR011
U 1 1 5D6B852D
P 5900 5100
F 0 "#PWR011" H 5900 4950 50  0001 C CNN
F 1 "+12V" V 5915 5228 50  0000 L CNN
F 2 "" H 5900 5100 50  0001 C CNN
F 3 "" H 5900 5100 50  0001 C CNN
	1    5900 5100
	0    1    1    0   
$EndComp
$Comp
L Device:CP C2
U 1 1 5D6BAF27
P 5550 5100
F 0 "C2" V 5295 5100 50  0000 C CNN
F 1 "47uF 50V" V 5386 5100 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 5588 4950 50  0001 C CNN
F 3 "~" H 5550 5100 50  0001 C CNN
	1    5550 5100
	0    1    1    0   
$EndComp
$Comp
L Device:CP C1
U 1 1 5D6CC610
P 3400 5100
F 0 "C1" V 3145 5100 50  0000 C CNN
F 1 "47uF 50V" V 3236 5100 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 3438 4950 50  0001 C CNN
F 3 "~" H 3400 5100 50  0001 C CNN
	1    3400 5100
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR08
U 1 1 5D6CCA76
P 3900 5100
F 0 "#PWR08" H 3900 4950 50  0001 C CNN
F 1 "+12V" V 3915 5228 50  0000 L CNN
F 2 "" H 3900 5100 50  0001 C CNN
F 3 "" H 3900 5100 50  0001 C CNN
	1    3900 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 5100 3750 5100
Wire Wire Line
	3750 5350 3750 5100
Connection ~ 3750 5100
Wire Wire Line
	3750 5100 3550 5100
Wire Wire Line
	5700 5100 5800 5100
Wire Wire Line
	5800 5100 5800 5400
Wire Wire Line
	5900 5100 5800 5100
Connection ~ 5800 5100
$Comp
L uhat:Pololu_Breakout_DRV8880 A2
U 1 1 5D6B47E1
P 5700 6000
F 0 "A2" H 5700 6000 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" H 5700 6650 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 5900 5200 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 5800 5700 50  0001 C CNN
	1    5700 6000
	1    0    0    -1  
$EndComp
Connection ~ 5750 7000
Wire Wire Line
	5800 7000 5750 7000
Wire Wire Line
	5800 6800 5800 7000
Wire Wire Line
	5700 7000 5750 7000
Wire Wire Line
	5700 6800 5700 7000
$Comp
L power:GND #PWR010
U 1 1 5D6B6FB0
P 5750 7000
F 0 "#PWR010" H 5750 6750 50  0001 C CNN
F 1 "GND" H 5755 6827 50  0000 C CNN
F 2 "" H 5750 7000 50  0001 C CNN
F 3 "" H 5750 7000 50  0001 C CNN
	1    5750 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D6D45D1
P 3100 5000
F 0 "#PWR05" H 3100 4750 50  0001 C CNN
F 1 "GND" H 3105 4827 50  0000 C CNN
F 2 "" H 3100 5000 50  0001 C CNN
F 3 "" H 3100 5000 50  0001 C CNN
	1    3100 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 5100 3100 5100
Wire Wire Line
	3100 5100 3100 5000
$Comp
L power:GND #PWR09
U 1 1 5D6D543F
P 5150 5000
F 0 "#PWR09" H 5150 4750 50  0001 C CNN
F 1 "GND" H 5155 4827 50  0000 C CNN
F 2 "" H 5150 5000 50  0001 C CNN
F 3 "" H 5150 5000 50  0001 C CNN
	1    5150 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 5100 5150 5100
Wire Wire Line
	5150 5100 5150 5000
$Comp
L Connector:Conn_01x04_Female J6
U 1 1 5D6D80DB
P 6550 6000
F 0 "J6" V 6700 5950 50  0000 L CNN
F 1 "Conn_01x04_Female" V 6600 5650 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 6550 6000 50  0001 C CNN
F 3 "~" H 6550 6000 50  0001 C CNN
	1    6550 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5900 6100 5900
Wire Wire Line
	6350 6000 6100 6000
Wire Wire Line
	6350 6100 6100 6100
Wire Wire Line
	6100 6100 6100 6200
Wire Wire Line
	6350 6200 6350 6300
Wire Wire Line
	6350 6300 6100 6300
Wire Wire Line
	4400 5950 4250 5950
Wire Wire Line
	4050 6050 4050 6150
Wire Wire Line
	4150 6250 4050 6250
$Comp
L power:+5V #PWR03
U 1 1 5D6EA7C6
P 1250 2350
F 0 "#PWR03" H 1250 2200 50  0001 C CNN
F 1 "+5V" H 1265 2523 50  0000 C CNN
F 2 "" H 1250 2350 50  0001 C CNN
F 3 "" H 1250 2350 50  0001 C CNN
	1    1250 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2400 1250 2400
Wire Wire Line
	1250 2400 1250 2350
Wire Wire Line
	9200 2700 9300 2700
$Comp
L power:+5V #PWR016
U 1 1 5D6EDBE7
P 9450 2700
F 0 "#PWR016" H 9450 2550 50  0001 C CNN
F 1 "+5V" H 9465 2873 50  0000 C CNN
F 2 "" H 9450 2700 50  0001 C CNN
F 3 "" H 9450 2700 50  0001 C CNN
	1    9450 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2900 9450 2900
Wire Wire Line
	9200 3000 9550 3000
Text Label 9200 3000 0    50   ~ 0
SND_RX
Wire Wire Line
	1650 2500 1250 2500
Text Label 1250 2500 0    50   ~ 0
SND_RX
$Comp
L power:GND #PWR017
U 1 1 5D6F35CF
P 9600 4100
F 0 "#PWR017" H 9600 3850 50  0001 C CNN
F 1 "GND" H 9605 3927 50  0000 C CNN
F 2 "" H 9600 4100 50  0001 C CNN
F 3 "" H 9600 4100 50  0001 C CNN
	1    9600 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5D6F3B0D
P 9600 4300
F 0 "#PWR018" H 9600 4050 50  0001 C CNN
F 1 "GND" H 9605 4127 50  0000 C CNN
F 2 "" H 9600 4300 50  0001 C CNN
F 3 "" H 9600 4300 50  0001 C CNN
	1    9600 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9600 4300 9200 4300
Wire Wire Line
	9600 4100 9200 4100
$Comp
L power:GND #PWR014
U 1 1 5D6F9F85
P 6750 3900
F 0 "#PWR014" H 6750 3650 50  0001 C CNN
F 1 "GND" H 6755 3727 50  0000 C CNN
F 2 "" H 6750 3900 50  0001 C CNN
F 3 "" H 6750 3900 50  0001 C CNN
	1    6750 3900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5D6FA65E
P 6750 4600
F 0 "#PWR015" H 6750 4350 50  0001 C CNN
F 1 "GND" H 6755 4427 50  0000 C CNN
F 2 "" H 6750 4600 50  0001 C CNN
F 3 "" H 6750 4600 50  0001 C CNN
	1    6750 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 4600 7300 4600
Wire Wire Line
	6650 3100 6650 3150
Wire Wire Line
	6650 3100 7300 3100
$Comp
L power:GND #PWR012
U 1 1 5D6FF585
P 6650 3150
F 0 "#PWR012" H 6650 2900 50  0001 C CNN
F 1 "GND" H 6655 2977 50  0000 C CNN
F 2 "" H 6650 3150 50  0001 C CNN
F 3 "" H 6650 3150 50  0001 C CNN
	1    6650 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3900 7300 3900
Wire Wire Line
	9300 2700 9300 2800
Wire Wire Line
	9300 2800 9200 2800
Connection ~ 9300 2700
Wire Wire Line
	9300 2700 9450 2700
Wire Wire Line
	7300 3500 6700 3500
$Comp
L power:+3.3V #PWR013
U 1 1 5D704D31
P 6700 3500
F 0 "#PWR013" H 6700 3350 50  0001 C CNN
F 1 "+3.3V" H 6715 3673 50  0000 C CNN
F 2 "" H 6700 3500 50  0001 C CNN
F 3 "" H 6700 3500 50  0001 C CNN
	1    6700 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7300 3300 6800 3300
Text Label 6800 3300 0    50   ~ 0
STP1_~SLP
Wire Wire Line
	7300 3400 6800 3400
Text Label 6800 3400 0    50   ~ 0
STP1_DIR
Wire Wire Line
	9200 3400 9650 3400
Text Label 9250 3400 0    50   ~ 0
STP1_STEP
Wire Wire Line
	3250 6050 2800 6050
Text Label 2800 5650 0    50   ~ 0
STP1_~SLP
Text Label 2800 5950 0    50   ~ 0
STP1_STEP
Wire Wire Line
	2800 5950 3250 5950
Text Label 2800 6050 0    50   ~ 0
STP1_DIR
Text Label 4850 5700 0    50   ~ 0
STP2_~SLP
Wire Wire Line
	5300 6000 4850 6000
Text Label 4850 6000 0    50   ~ 0
STP2_STEP
Wire Wire Line
	5300 6100 4850 6100
Text Label 4850 6100 0    50   ~ 0
STP2_DIR
Wire Wire Line
	7300 4100 6800 4100
Text Label 6800 4100 0    50   ~ 0
STP2_DIR
Wire Wire Line
	7300 4200 6800 4200
Text Label 6800 4200 0    50   ~ 0
STP2_~SLP
Wire Wire Line
	9200 4200 9650 4200
Text Label 9200 4200 0    50   ~ 0
STP2_STEP
NoConn ~ 9200 3200
Wire Wire Line
	9200 3300 9700 3300
$Comp
L power:GND #PWR019
U 1 1 5D746E48
P 9700 3300
F 0 "#PWR019" H 9700 3050 50  0001 C CNN
F 1 "GND" H 9705 3127 50  0000 C CNN
F 2 "" H 9700 3300 50  0001 C CNN
F 3 "" H 9700 3300 50  0001 C CNN
	1    9700 3300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5D747273
P 9700 3600
F 0 "#PWR020" H 9700 3350 50  0001 C CNN
F 1 "GND" H 9705 3427 50  0000 C CNN
F 2 "" H 9700 3600 50  0001 C CNN
F 3 "" H 9700 3600 50  0001 C CNN
	1    9700 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9700 3600 9200 3600
NoConn ~ 9200 4000
NoConn ~ 7300 4000
NoConn ~ 9200 4400
NoConn ~ 9200 4500
NoConn ~ 7300 4500
NoConn ~ 7300 4400
NoConn ~ 7300 4300
NoConn ~ 7300 3700
NoConn ~ 2850 2500
NoConn ~ 2850 2600
NoConn ~ 2850 2400
NoConn ~ 2850 2700
NoConn ~ 2850 2800
NoConn ~ 2850 2900
NoConn ~ 2850 3100
NoConn ~ 1650 2700
NoConn ~ 1650 2800
NoConn ~ 1650 2600
$Comp
L Connector:AudioJack4 J7
U 1 1 5D77E4B7
P 1100 3550
F 0 "J7" V 1128 3320 50  0000 R CNN
F 1 "AudioJack3" V 1037 3320 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_PJ320E_Horizontal" H 1100 3550 50  0001 C CNN
F 3 "~" H 1100 3550 50  0001 C CNN
	1    1100 3550
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Barrel_Jack_Switch J8
U 1 1 5D798245
P 9200 1550
F 0 "J8" H 8970 1500 50  0000 R CNN
F 1 "Jack-DC" H 8970 1591 50  0000 R CNN
F 2 "Connector_BarrelJack:BarrelJack_CUI_PJ-102AH_Horizontal" H 9250 1510 50  0001 C CNN
F 3 "~" H 9250 1510 50  0001 C CNN
	1    9200 1550
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR022
U 1 1 5D79B3AB
P 8550 1650
F 0 "#PWR022" H 8550 1500 50  0001 C CNN
F 1 "+12V" V 8565 1778 50  0000 L CNN
F 2 "" H 8550 1650 50  0001 C CNN
F 3 "" H 8550 1650 50  0001 C CNN
	1    8550 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8900 1650 8550 1650
$Comp
L power:GND #PWR021
U 1 1 5D79E687
P 8500 1450
F 0 "#PWR021" H 8500 1200 50  0001 C CNN
F 1 "GND" H 8505 1277 50  0000 C CNN
F 2 "" H 8500 1450 50  0001 C CNN
F 3 "" H 8500 1450 50  0001 C CNN
	1    8500 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 1450 8500 1450
$Comp
L Connector:Conn_01x05_Female J9
U 1 1 5D7A586B
P 6950 1450
F 0 "J9" V 7150 1500 50  0000 R CNN
F 1 "Conn_01x05_Female" V 7050 1800 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 6950 1450 50  0001 C CNN
F 3 "~" H 6950 1450 50  0001 C CNN
	1    6950 1450
	0    -1   -1   0   
$EndComp
NoConn ~ 6750 1650
$Comp
L power:+12V #PWR023
U 1 1 5D7B4D3A
P 6900 1800
F 0 "#PWR023" H 6900 1650 50  0001 C CNN
F 1 "+12V" V 6915 1928 50  0000 L CNN
F 2 "" H 6900 1800 50  0001 C CNN
F 3 "" H 6900 1800 50  0001 C CNN
	1    6900 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5D7B84FA
P 7050 1750
F 0 "#PWR024" H 7050 1500 50  0001 C CNN
F 1 "GND" H 7055 1577 50  0000 C CNN
F 2 "" H 7050 1750 50  0001 C CNN
F 3 "" H 7050 1750 50  0001 C CNN
	1    7050 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1750 7050 1650
$Comp
L power:+5V #PWR025
U 1 1 5D7BC2FF
P 7200 1800
F 0 "#PWR025" H 7200 1650 50  0001 C CNN
F 1 "+5V" V 7215 1928 50  0000 L CNN
F 2 "" H 7200 1800 50  0001 C CNN
F 3 "" H 7200 1800 50  0001 C CNN
	1    7200 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 1800 7150 1800
Wire Wire Line
	7150 1800 7150 1650
Wire Wire Line
	8900 1550 8900 1450
Connection ~ 8900 1450
NoConn ~ 5300 6300
NoConn ~ 5300 6400
NoConn ~ 5300 6500
NoConn ~ 5300 6600
NoConn ~ 3250 6250
NoConn ~ 3250 6350
NoConn ~ 3250 6450
NoConn ~ 3250 6550
NoConn ~ 3250 5850
NoConn ~ 3250 5550
NoConn ~ 5300 5600
NoConn ~ 5300 5900
$Comp
L Connector:Conn_01x04_Female J10
U 1 1 5D85E9E8
P 4600 6450
F 0 "J10" V 4750 6400 50  0000 L CNN
F 1 "RAIL2" V 4650 6350 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 4600 6450 50  0001 C CNN
F 3 "~" H 4600 6450 50  0001 C CNN
	1    4600 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5850 4300 5850
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 5D6D6AFB
P 4600 5950
F 0 "J5" V 4750 5900 50  0000 L CNN
F 1 "RAIL1" V 4650 5850 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 4600 5950 50  0001 C CNN
F 3 "~" H 4600 5950 50  0001 C CNN
	1    4600 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6150 4150 6150
Wire Wire Line
	4050 6250 4050 6650
Wire Wire Line
	4050 6650 4400 6650
Connection ~ 4050 6250
Wire Wire Line
	4400 6050 4200 6050
Wire Wire Line
	4150 6150 4150 6250
Wire Wire Line
	4400 6550 4200 6550
Wire Wire Line
	4200 6550 4200 6050
Connection ~ 4200 6050
Wire Wire Line
	4200 6050 4050 6050
Wire Wire Line
	4400 6450 4250 6450
Wire Wire Line
	4250 6450 4250 5950
Connection ~ 4250 5950
Wire Wire Line
	4250 5950 4050 5950
Wire Wire Line
	4300 5850 4300 6350
Wire Wire Line
	4300 6350 4400 6350
Connection ~ 4300 5850
Wire Wire Line
	4300 5850 4400 5850
Wire Wire Line
	6950 1650 6950 1800
Wire Wire Line
	6950 1800 6900 1800
NoConn ~ 6850 1650
NoConn ~ 7300 2800
NoConn ~ 7300 2900
NoConn ~ 9200 3100
$Comp
L LED:WS2812B D2
U 1 1 5D8F385E
P 9750 4900
F 0 "D2" V 9704 5244 50  0000 L CNN
F 1 "WS2812B" V 9795 5244 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 9800 4600 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 9850 4525 50  0001 L TNN
	1    9750 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 4600 9750 4600
Wire Wire Line
	10150 4900 10050 4900
$Comp
L power:GND #PWR026
U 1 1 5D9007FE
P 9300 4900
F 0 "#PWR026" H 9300 4650 50  0001 C CNN
F 1 "GND" H 9305 4727 50  0000 C CNN
F 2 "" H 9300 4900 50  0001 C CNN
F 3 "" H 9300 4900 50  0001 C CNN
	1    9300 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4900 9300 4900
$Comp
L power:+3.3V #PWR0106
U 1 1 5D910A9E
P 10150 5100
F 0 "#PWR0106" H 10150 4950 50  0001 C CNN
F 1 "+3.3V" H 10165 5273 50  0000 C CNN
F 2 "" H 10150 5100 50  0001 C CNN
F 3 "" H 10150 5100 50  0001 C CNN
	1    10150 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	10150 4900 10150 5100
Wire Wire Line
	1000 2900 1000 3250
Wire Wire Line
	1000 2900 1650 2900
Wire Wire Line
	1650 3100 1300 3100
Wire Wire Line
	1200 3100 1200 3350
Wire Wire Line
	1300 3350 1300 3100
Connection ~ 1300 3100
Wire Wire Line
	1300 3100 1200 3100
Wire Wire Line
	1000 3250 1100 3250
Wire Wire Line
	1100 3250 1100 3350
Connection ~ 1000 3250
Wire Wire Line
	1000 3250 1000 3350
Wire Wire Line
	3250 5650 2800 5650
Wire Wire Line
	5300 5700 4850 5700
NoConn ~ 9750 5200
$EndSCHEMATC