import strutils, streams, sequtils

let
    inFile = newFileStream("input.txt", fmRead)
    outFile = open("output.txt", fmWrite)

var ln = ""

while inFile.readLine(ln):
  outFile.writeLine(map(ln.split('\t'), proc(x: string): string = x & "_mark").join(", "))

outFile.close()
inFile.close()
