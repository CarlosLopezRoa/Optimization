i=1
f1 = open('x10.txt','w')
f2 = open('y10.txt','w')

with open('10.dat','r') as rf:
    reader = csv.reader(rf,delimiter=' ')
    for row in reader:
        if "*" not in row[6]:
            f1.write(row[0]+' '+row[1]+' '+row[2]+' '+row[3]+'\n')
            f2.write(row[6]+'\n')
        i += 1

f1.close() 
f2.close()