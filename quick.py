with open('output.txt', 'w') as f:
    for r in open('input.txt'):
        l=r.split('\t')
        for i in range(len(l)):
            l[i]+='_mark'
        x=', '.join(l)
        f.write(x)
