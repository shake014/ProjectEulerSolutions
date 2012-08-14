#!/usr/bin/python
for a in range(1, 500):
    for b in range(1, 500):
        for c in range(1, 500):
            if(a*a+b*b==c*c):
                if(a+b+c==1000):
                    print a*b*c
                    break
