import strutils

let
    inFile = open("input.txt", fmRead)
    outFile = open("output.txt", fmWrite)

var parts: seq[string]

for ln in inFile.lines:
  parts = ln.split('\t')
  
  for idx, val in pairs(parts):
    parts[idx] &= "_mark"
  
  outFile.writeLine(parts.join(", "))

outFile.close()
inFile.close()
