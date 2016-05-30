import strutils

proc main() =
  let inFile = open("input.txt", fmRead)
  let outFile = open("output.txt", fmWrite)

  var ln: TaintedString = ""
  var parts: seq[string]

  #while inFile.readLine(ln):
  for ln in inFile.readAll().splitLines():
    parts = ln.split('\t')
    
    for idx, val in pairs(parts):
      parts[idx] &= "_mark"
    
    outFile.writeLine(parts.join(", "))

  outFile.close()
  inFile.close()

main()
