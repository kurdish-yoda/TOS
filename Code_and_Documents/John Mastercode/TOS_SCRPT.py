import time                      #importing delay library
import RPi.GPIO as GPIO
import sys 
import json

GPIO.setmode(GPIO.BCM)           #Setting GPIO Mode

DIR1 = 2                         # Direction GPIO Pin
STEP1 = 3                        # Step GPIO Pin
GPIO.setup(DIR1, GPIO.OUT)
GPIO.setup(STEP1, GPIO.OUT)
DIR2 =  4                        # Direction GPIO Pin
STEP2 =  14                      # Step GPIO Pin
GPIO.setup(DIR2, GPIO.OUT)
GPIO.setup(STEP2, GPIO.OUT)
DIR3 =  15                       # Direction GPIO Pin
STEP3 = 10                       # Step GPIO Pinesp32-wroom-32u
GPIO.setup(DIR3, GPIO.OUT)
GPIO.setup(STEP3, GPIO.OUT)
DIR4 = 9                         # Direction GPIO Pin
STEP4 = 11                       # Step GPIO Pin
GPIO.setup(DIR4, GPIO.OUT)
GPIO.setup(STEP4, GPIO.OUT)
DIR5 =  5                        # Direction GPIO Pin
STEP5 = 12                       # Step GPIO Pin
GPIO.setup(DIR5, GPIO.OUT)
GPIO.setup(STEP5, GPIO.OUT)
DIR6 =  6                        # Direction GPIO Pin
STEP6 = 13                       # Step GPIO Pin
GPIO.setup(DIR6, GPIO.OUT)
GPIO.setup(STEP6, GPIO.OUT)

CW = 1                           # Clockwise Rotation
CCW = 0                          # Counterclockwise Rotation
positions = 3200                 # Steps per revolution, whatever the number is take that number and times it with 16, as the board it set up 16 microstepping (so for nema17, in genneral, 200x16 = 3200
x = 0
y = 0
i = 9
delay = .00103



#HC595 pin numbers
SDI   = 23  #serial data input pin
RCLK  = 24  #Storage Register Clock
SRCLK = 25  #Shift Register Clock
OE    = 18  #Output Enable
RST   = 22  #Reset

#Switches pin numbers
FWD_SW = 8  #pin number for forward switch
BWD_SW = 7  #pin number for backward switch

#HC595 clock speed
HC595_CLKTime = 0.00001

# Stepper definitions #

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
        GPIO.output(x, GPIO.HIGH)
    elif dir == CCW:
        GPIO.output(x, GPIO.LOW)
    
    # movement #
    for x in range(0, 3200):
        GPIO.output(y, GPIO.HIGH)
        time.sleep(delay)
        GPIO.output(y, GPIO.LOW)
        time.sleep(delay)

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
        GPIO.output(x, GPIO.HIGH)
    elif dir == CCW:
        GPIO.output(x, GPIO.LOW)

    # movement #
    for x in range(0, 1600):
        GPIO.output(y, GPIO.HIGH)
        time.sleep(delay)
        GPIO.output(y, GPIO.LOW)
        time.sleep(delay)
        
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
        GPIO.output(x, GPIO.HIGH)
    elif dir == CCW:
        GPIO.output(x, GPIO.LOW)

    # movement #
    for z in range(0, 800):
        GPIO.output(y, GPIO.HIGH)
        time.sleep(delay)
        GPIO.output(y, GPIO.LOW)
        time.sleep(delay)
        
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
        GPIO.output(x, GPIO.HIGH)
    elif dir == CCW:
        GPIO.output(x, GPIO.LOW)

    # movement #
    for x in range(0, 400):
        GPIO.output(y, GPIO.HIGH)
        time.sleep(delay)
        GPIO.output(y, GPIO.LOW)
        time.sleep(delay)
        
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
        GPIO.output(x, GPIO.HIGH)
    elif dir == CCW:
        GPIO.output(x, GPIO.LOW)

    # movement #
    for x in range(0, degree):
        GPIO.output(y, GPIO.HIGH)
        time.sleep(delay)
        GPIO.output(y, GPIO.LOW)
        time.sleep(delay)
        
    return()

def StepperRun_at_start():       # TO BE EDITED FOR INDIVIDUAL USE CASE #
    move90(1, CW)
    
def StepperRun(JSONline):        # TO BE EDITED FOR INDIVIDUAL USE CASE #
    if JSONline == 0:
        move90(1, CW)

    elif JSONline == 1:
        move90(2, CW)
    
    elif JSONline == 2:
        move90(3, CW)
    
    else: 
        print("Stepper action for this JSON has not been codded in")
        

# End of stepper definitions #

# Beggining of solenoid definitions #

#HC595 functions
def HC595_SetupPins():
    GPIO.setup(OE, GPIO.OUT)
    GPIO.output(OE, GPIO.HIGH)
    GPIO.setup(SDI, GPIO.OUT)
    GPIO.output(SDI, GPIO.LOW)
    GPIO.setup(SRCLK, GPIO.OUT)
    GPIO.output(SRCLK, GPIO.LOW)
    GPIO.setup(RCLK, GPIO.OUT)
    GPIO.output(RCLK, GPIO.LOW)
    GPIO.setup(RST, GPIO.OUT)
    GPIO.output(RST, GPIO.HIGH)

def HC595_DataClk():
    GPIO.output(SRCLK, GPIO.HIGH)
    time.sleep(HC595_CLKTime)
    GPIO.output(SRCLK, GPIO.LOW)
    time.sleep(HC595_CLKTime)

def HC595_SetData(state):
    if state == 1:
        GPIO.output(SDI, GPIO.HIGH)
    else:
        GPIO.output(SDI, GPIO.LOW)
    time.sleep(HC595_CLKTime)

def HC595_EnableOutputs():
    GPIO.output(OE, GPIO.LOW)

def HC595_DisableOutputs():
    GPIO.output(OE, GPIO.HIGH)

def HC595_LatchData():
    GPIO.output(RCLK, GPIO.HIGH)
    time.sleep(HC595_CLKTime)
    GPIO.output(RCLK, GPIO.LOW)
    time.sleep(HC595_CLKTime)

def HC595_Reset(state):
    if state == 1:
        GPIO.output(RST, GPIO.HIGH)
    else:
        GPIO.output(RST, GPIO.LOW)

#function to load a number of bits in HC595
#param value: bit state to be loaded (0 or 1)
#param positions: number of bits to load
def HC595_Flush(value, positions):
    if positions > 0:
        if value == 0 or value == 1:
            for i in range(positions):
                HC595_SetData(value)
                HC595_DataClk()

#Function to read Forward Switch
def FwdSwitchRead():
    return GPIO.input(FWD_SW)

#Function to read Backward Switch
def BwdSwitchRead():
    return GPIO.input(BWD_SW)

#JSON check function
def JSON_CheckReadValues():
    error = 0
    #check Warps value
    if Warps <= 0:
        print("Warps value negative!")
        error = error + 1
    #check Repeats value
    if Repeats < 0:
        print("Repeats value negative!")
        error = error + 1
    #check sequence lengths
    numSequences = len(Sequence)
    for i in range(numSequences):
        sequenceLen = len(Sequence[i])
        if sequenceLen != Warps:
            print("Sequence " + str(i) + " length does not match warps value!")
            print("Sequence length is " + str(sequenceLen) + " and warps length is " + str(Warps))
            error = error + 1
    numSequences = len(Sequence)
    #check sequence values, should be only "0"s and "1"s
    for i in range(numSequences):
        seqValues = Sequence[i]
        for j in range(len(seqValues)):
            if seqValues[j] != 0 and seqValues[j] != 1:
                print("Sequence " + str(i) + " value " + str(j) + " invalid: " + str(seqValues[j]) + " (should be 0 or 1)")        
                error = error + 1
    if error > 0:
        return False

    print("JSON file data:")
    print("warps value: " + str(Warps))
    print("number of sequences: " + str(len(Sequence)))
    print("threads value: " + str(Threads))
    print("repeats value: " + str(Repeats))
    return True

#Cleaning function on program exit
def ProgramExitCleanup():
    HC595_Flush(0, Warps)
    HC595_LatchData()
    HC595_DisableOutputs()
    GPIO.cleanup()

#Function that load a sequence to the shift regsiters
#param seqNumber: sequence index starting from 0 till n-1
def LoadSequence(seqNumber):
    sequence = Sequence[seqNumber]
    sequenceLen = len(sequence)
    #print(str(sequence))
    for i in range(sequenceLen):
        bit = sequence[i]
        HC595_SetData(bit)
        HC595_DataClk()

#Function that loads a sequence into the shift registers and latches the data
def EngageSolenoid(seqNumber):
    LoadSequence(seqNumber)
    HC595_LatchData()

#Function that loads a sequence of "0"s (can be changed to load "1"s) into the shift registers and latches the data
def DisengageSolenoid():
    HC595_Flush(0, Warps)
    HC595_LatchData()

#Application Logic globals
APPL_state = "Running"
APPL_seqIdx = 0
APPL_repeats = 0
APPL_seqNum = 0  #will be updated in main
APPL_solenoidsEng = False
APPL_seqStart = True

#Function that represents the logic of the application
def ApplicationLogic():
    global APPL_state
    global APPL_seqIdx
    global APPL_repeats
    global APPL_solenoidsEng
    global APPL_seqStart

    if APPL_state == "Running":
        if FwdSwitchRead() == 0:
            if APPL_solenoidsEng == True:
                DisengageSolenoid()
                print("Disengage")
                APPL_solenoidsEng = False
                time.sleep(0.3) #to avoid multiple button commands
            else:
                if APPL_seqStart == True:
                    EngageSolenoid(0)
                    StepperRun(1)
                    print("Engage Seq= " + str(APPL_seqIdx) + " Rep= " + str(APPL_repeats))
                    APPL_solenoidsEng = True
                    APPL_seqStart = False
                    time.sleep(0.3) #to avoid multiple button commands
                else:
                    if APPL_seqIdx < APPL_seqNum - 1:
                        APPL_seqIdx += 1
                        EngageSolenoid(APPL_seqIdx)
                        StepperRun(APPL_seqIdx)
                        APPL_solenoidsEng = True
                        print("Engage Seq= " + str(APPL_seqIdx) + " Rep= " + str(APPL_repeats))
                        time.sleep(0.3) #to avoid multiple button commands
                    else:
                        if APPL_seqIdx == APPL_seqNum - 1:
                            if APPL_repeats == Repeats - 1 and APPL_repeats != 0:
                                APPL_state = "Finished"
                                print("Running->Finished")
                            else:
                                APPL_seqIdx = 0
                                APPL_repeats += 1
                                EngageSolenoid(APPL_seqIdx)
                                StepperRun(APPL_seqIdx)
                                APPL_solenoidsEng = True
                                print("Engage Seq= " + str(APPL_seqIdx) + " Rep= " + str(APPL_repeats))
                                time.sleep(0.3) #to avoid multiple button commands
                    
        elif BwdSwitchRead() == 0:
            if APPL_solenoidsEng == True:
                DisengageSolenoid()
                print("Disengage")
                APPL_solenoidsEng = False
                if APPL_seqIdx == 0 and APPL_repeats == 0:
                    APPL_seqStart = True
                time.sleep(0.3) #to avoid multiple button commands
            else:
                if APPL_seqIdx > 0:
                    APPL_seqIdx -= 1
                    EngageSolenoid(APPL_seqIdx)
                    StepperRun(APPL_seqIdx)
                    APPL_solenoidsEng = True
                    print("Engage Seq= " + str(APPL_seqIdx) + " Rep= " + str(APPL_repeats))
                    time.sleep(0.3) #to avoid multiple button commands
                elif APPL_seqIdx == 0:
                    if APPL_repeats > 0:
                        APPL_seqIdx = APPL_seqNum - 1
                        APPL_repeats -= 1
                        EngageSolenoid(APPL_seqIdx)
                        StepperRun(APPL_seqIdx)
                        APPL_solenoidsEng = True
                        print("Engage Seq= " + str(APPL_seqIdx) + " Rep= " + str(APPL_repeats))
                        time.sleep(0.3) #to avoid multiple button commands

#End of solenoid definitions#




# Main application #

if __name__ == '__main__':
    
    GPIO.setwarnings(False)

    jsonValidity = False
    try:
        #Load Json into global variables
        with open('config.json') as json_file:
            configfile = json.load(json_file)
            Warps = configfile["warps"]
            Sequence = configfile["sequence"]
            Threads = configfile["threads"]
            Repeats = configfile["repeats"]
            jsonValidity = JSON_CheckReadValues()
    except:
        #Exit rogram if JSON prasing fails
        e = sys.exc_info()[0]
        print(e)
        sys.exit()

    if jsonValidity == True:
        print("Json valid, program will run (press Crtl+C to stop the program)...")

        GPIO.setmode(GPIO.BCM)
        HC595_SetupPins()
        HC595_Reset(1)  #release chip RESET (active low)
        HC595_Flush(0, Warps)
        HC595_LatchData()
        HC595_EnableOutputs()

        #setup pins for switches, configure internall Pull Up resistor
        #input will read "1" when no pressed and "0" when pressed
        GPIO.setup(FWD_SW,GPIO.IN, pull_up_down=GPIO.PUD_UP)
        GPIO.setup(BWD_SW,GPIO.IN, pull_up_down=GPIO.PUD_UP)

        APPL_seqNum = len(Sequence)
        try:
            #this is the main loop of the application
            #can be broken if Ctrl+C is pressed or if repeats are executed
            while APPL_state != "Finished":
                
                StepperRun_at_start()   #First stepper movement before engaging JSON
                time.sleep(0.5)         #Delay beffore going into main application logic
                ApplicationLogic()
                
        except KeyboardInterrupt:
            print("Ctrl+C pressed, program will exit")
            ProgramExitCleanup

        print("Program finished, exit")
        ProgramExitCleanup()
    else:
        print("Json not valid, program will exit")
