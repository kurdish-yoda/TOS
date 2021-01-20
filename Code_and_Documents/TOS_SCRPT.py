from time import sleep  #importing delay library
import RPi.GPIO as gpio

gpio.setmode(gpio.BCM)          #Setting GPIO Mode
DIR1 = 13                        # Direction GPIO Pin
STEP1 = 12                       # Step GPIO Pin
gpio.setup(DIR1, gpio.OUT)
gpio.setup(STEP1, gpio.OUT)
DIR2 =  5                        # Direction GPIO Pin
STEP2=  6                        # Step GPIO Pin
gpio.setup(DIR2, gpio.OUT)
gpio.setup(STEP2, gpio.OUT)
DIR3=  9                        # Direction GPIO Pin
STEP3 =  11                       # Step GPIO Pin
gpio.setup(DIR3, gpio.OUT)
gpio.setup(STEP3, gpio.OUT)
DIR4 =  10                        # Direction GPIO Pin
STEP4 =  4                      # Step GPIO Pin
gpio.setup(DIR4, gpio.OUT)
gpio.setup(STEP4, gpio.OUT)
DIR5 =  14                       # Direction GPIO Pin
STEP5 = 15                       # Step GPIO Pin
gpio.setup(DIR5, gpio.OUT)
gpio.setup(STEP5, gpio.OUT)
DIR6 =  3                        # Direction GPIO Pin
STEP6 = 2                        # Step GPIO Pin
gpio.setup(DIR6, gpio.OUT)
gpio.setup(STEP6, gpio.OUT)

CW = 1                           # Clockwise Rotation
CCW = 0                          # Counterclockwise Rotation
positions = 3200                 # Steps per revolution, whatever the number is take that number and times it with 16, as the board it set up 16 microstepping (so for nema17, in genneral, 200x16 = 3200
x = 0
y = 0
i = 9
delay = .00103

# move 360 degrees # 
def move360(group, dir):
    # group selection #
    if group == 1:
        x = DIR1
        y = STEP1
    elif group == 2:
        x = DIR2 
        y = STEP2
    elif group == 3:
        x = DIR3
        y = STEP3
    elif group == 4:
        x = DIR4
        y = STEP4
    elif group == 5:
        x = DIR5
        y = STEP5 
    elif group == 6:
        x = DIR6 
        y = STEP6 
    
    # direction statement #
    if dir == CW:
        gpio.output(x, gpio.HIGH)
    elif dir == CCW:
        gpio.output(x, gpio.LOW)
    
    # movement #
    for x in range(0, 3200):
        gpio.output(y, gpio.HIGH)
        sleep(delay)
        gpio.output(y, gpio.LOW)
        sleep(delay)

    return()

#move 180 degress#
def move180(group, dir):
    # group selection #
    if group == 1:
        x = DIR1
        y = STEP1
    elif group == 2:
        x = DIR2 
        y = STEP2
    elif group == 3:
        x = DIR3
        y = STEP3
    elif group == 4:
        x = DIR4
        y = STEP4
    elif group == 5:
        x = DIR5
        y = STEP5 
    elif group == 6:
        x = DIR6 
        y = STEP6 
    
    # direction statement #
    if dir == CW:
        gpio.output(x, gpio.HIGH)
    elif dir == CCW:
        gpio.output(x, gpio.LOW)

    # movement #
    for x in range(0, 1600):
        gpio.output(y, gpio.HIGH)
        sleep(delay)
        gpio.output(y, gpio.LOW)
        sleep(delay)
        
    return()

#move 90 degress#
def move90(group, dir):
    # group selection #
    if group == 1:
        x = 13
        y = 12
    elif group == 2:
        x = DIR2
        y = STEP2
    elif group == 3:
        x = DIR3
        y = STEP3
    elif group == 4:
        x = DIR4
        y = STEP4
    elif group == 5:
        x = DIR5
        y = STEP5
    elif group == 6:
        x = DIR6
        y = STEP6
    
    # direction statement #
    if dir == CW:
        gpio.output(x, gpio.HIGH)
    elif dir == CCW:
        gpio.output(x, gpio.LOW)

    # movement #
    for z in range(0, 800):
        gpio.output(y, gpio.HIGH)
        sleep(delay)
        gpio.output(y, gpio.LOW)
        sleep(delay)
        
    return()

#move 45 degress@
def move45(group, dir):
    # group selection #
    if group == 1:
        x = DIR1
        y = STEP1
    elif group == 2:
        x = DIR2 
        y = STEP2
    elif group == 3:
        x = DIR3
        y = STEP3
    elif group == 4:
        x = DIR4
        y = STEP4
    elif group == 5:
        x = DIR5
        y = STEP5 
    elif group == 6:
        x = DIR6 
        y = STEP6 
    
    # direction statement #
    if dir == CW:
        gpio.output(x, gpio.HIGH)
    elif dir == CCW:
        gpio.output(x, gpio.LOW)

    # movement #
    for x in range(0, 400):
        gpio.output(y, gpio.HIGH)
        sleep(delay)
        gpio.output(y, gpio.LOW)
        sleep(delay)
        
    return()


#move a defined number of degress
def move(group, dir, degree):
    degree = degree * i
    # group selection #
    if group == 1:
        x = DIR1
        y = STEP1
    elif group == 2:
        x = DIR2 
        y = STEP2
    elif group == 3:
        x = DIR3
        y = STEP3
    elif group == 4:
        x = DIR4
        y = STEP4
    elif group == 5:
        x = DIR5
        y = STEP5 
    elif group == 6:
        x = DIR6 
        y = STEP6 

    # direction statement #
    if dir == CW:
        gpio.output(x, gpio.HIGH)
    elif dir == CCW:
        gpio.output(x, gpio.LOW)

    # movement #
    for x in range(0, degree):
        gpio.output(y, gpio.HIGH)
        sleep(delay)
        gpio.output(y, gpio.LOW)
        sleep(delay)
        
    return()

#START
print("Starting Program")

move(6, CW, 90)
move90(6, CCW)
move180(6, CW)

print("********************")
print("Finishing Program")


