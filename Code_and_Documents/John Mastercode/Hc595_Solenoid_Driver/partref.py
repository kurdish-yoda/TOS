import os
import sys

print ("Number of arguments:", len(sys.argv), "arguments.")
print ("Argument List:", str(sys.argv))
print ("Arg 1: (KiCAD PCB file): " + str(sys.argv[1]))
print ("Arg 2: (start R): " + str(sys.argv[2]))
print ("Arg 3: (num R): " + str(sys.argv[3]))
print ("Arg 4: (start D): " + str(sys.argv[4]))
print ("Arg 5: (num D): " + str(sys.argv[5]))
print ("Arg 6: (start Q): " + str(sys.argv[6]))
print ("Arg 7: (num Q): " + str(sys.argv[7]))
print ("Arg 8: (start J): " + str(sys.argv[8]))
print ("Arg 9: (num J): " + str(sys.argv[9]))
print ("Arg 10: (start U): " + str(sys.argv[10]))
print ("Arg 11: (num U): " + str(sys.argv[11]))

if len(sys.argv) != 12:
    print("Unexpected number of arguments! Exiting...")
    sys.exit()

kicadPcbFile = str(sys.argv[1])
startR = int(sys.argv[2])
numR = int(sys.argv[3])
startD = int(sys.argv[4])
numD = int(sys.argv[5])
startQ = int(sys.argv[6])
numQ = int(sys.argv[7])
startJ = int(sys.argv[8])
numJ = int(sys.argv[9])
startU = int(sys.argv[10])
numU = int(sys.argv[11])

startC = []
startC.append(startR)
startC.append(startD)
startC.append(startQ)
startC.append(startJ)
startC.append(startU)
numC = []
numC.append(numR)
numC.append(numD)
numC.append(numQ)
numC.append(numJ)
numC.append(numU)
compName = []
compName.append("R")
compName.append("D")
compName.append("Q")
compName.append("J")
compName.append("U")

f = open(kicadPcbFile,'r')
filedata = f.read()
f.close()

for compIdx in range (0, len(startC)):
    CompCnt = 1;
    CompNamesToSearchFor = []
    CompNamesToReplace = []
    for i in range (1, numC[compIdx] + 1):
        CompNamesToSearchFor.append(" " + str(compName[compIdx]) + "%" + str(i) + " ")
        CompNamesToReplace.append(" " + str(compName[compIdx]) + str(startC[compIdx] + i - 1) + " ")

    print (str(CompNamesToSearchFor))
    print (str(CompNamesToReplace))

    lineNum = 1

    #for line in fileinput.input( kicadPcbFile ):
    CompNameCnt = 0
    for CompName in CompNamesToSearchFor:
        if CompName in filedata:
            filedata = filedata.replace(CompName,CompNamesToReplace[CompNameCnt])
            #tempFile.write(line.replace(CompName, CompNamesToReplace[CompNameCnt]))
            print("Replaced " + CompName + " with " + CompNamesToReplace[CompNameCnt] + " at line " + str(lineNum))
        CompNameCnt += 1
    lineNum += 1

kicadPcbFileModified = "mod_" + kicadPcbFile
f = open(kicadPcbFileModified,'w')
f.write(filedata)
f.close()
