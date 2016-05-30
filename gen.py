import sys
def main(prog, n=2, m=1, fn='input.txt'):
    n = int(n); m = int(m)
    with open(fn, 'w') as ofs:
        count = 0
        for i in range(n):
            data = list()
            for j in range(m):
                data.append('{:08d}'.format(count))
                count += 1
            line = '\t'.join(data) + '\n'
            ofs.write(line)
main(*sys.argv)
