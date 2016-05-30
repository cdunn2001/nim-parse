import strutils

var fd:File=open("out.txt", fmWrite)
var a:seq[string]
var b,line,v:string

for line in lines("temp.txt"):
    a=line.split("\t")
    for i,v in pairs(a):
        a[i]=a[i] & "_mark"
    b=a.join(", ")
    fd.writeLine(b)
fd.close()
