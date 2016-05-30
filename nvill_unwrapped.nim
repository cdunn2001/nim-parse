import streams, parsecsv, strutils

let
  fname = "input.txt"
  infile = newFileStream(fname, fmRead)
  outfile = open("output.txt", fmWrite)

var
  vcf: CsvParser

open(vcf, infile, fname, separator='\t')

while readRow(vcf):
  for i, word in vcf.row:
    vcf.row[i] = word & "_mark"
  outfile.writeLine(join(vcf.row, ", "))
