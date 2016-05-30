import strutils, streams

proc main() =
  let
      inFile = newFileStream("input.txt", fmRead)
      outFile = open("output.txt", fmWrite)

  var
      parts: seq[string]
      ln = ""

  while inFile.readLine(ln):
    parts = ln.split('\t')
    
    for idx, val in pairs(parts):
      parts[idx] &= "_mark"
    
    outFile.writeLine(parts.join(", "))

  outFile.close()
  inFile.close()

main()
