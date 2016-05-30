import strutils

proc main() =
  var fd:File=open("output.txt", fmWrite)
  var a:seq[string]
  var b:string

  for line in lines("input.txt"):
      a=line.split("\t")
      for i,v in pairs(a):
          a[i]=a[i] & "_mark"
      b=a.join(", ")
      fd.writeLine(b)
  fd.close()

main()
