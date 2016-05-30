import strutils, sequtils

proc main() =
  let inFile = open("input.txt", fmRead)
  let outFile = open("output.txt", fmWrite)

  var ln: TaintedString = ""

  while inFile.readLine(ln):
    outFile.writeLine(map(ln.split('\t'), proc(x: string): string = x & "_mark").join(", "))

  outFile.close()
  inFile.close()

main()
