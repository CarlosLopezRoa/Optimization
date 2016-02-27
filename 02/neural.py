from cvxpy 	import *
from cvxopt import *
import numpy
import math
# That process_data.py tool
import csv

i=1
f1 = open('data_x.txt','w')
f2 = open('data_y.txt','w')

with open('clr.dat','r') as rf:
    reader = csv.reader(rf,delimiter=' ')
    for row in reader:
        f1.write(row[0]+' '+row[1]+' '+row[2]+' '+row[3]+'\n')
        f2.write(row[6]+'\n')
        i += 1

f1.close() 
f2.close()

# Initialization of w with Random Numbers
# w={} #w is a dictionary properly indexed
# for i in range(1, 5):
# 	for j in range(5, 7):
# 		w[i,j] = numpy.random.randn(1,1)[0,0]
# for i in range(5,7):
# 	w[i,7] = numpy.random.randn(1,1)[0,0]
# print w

def sigmoid(x):
	y = 1/(1+math.e**(-x))
	return y

# Import


# Modeling the problem
n = 10; # Size of the problem
w = Variable(n)

# obj = Minimize(sum_squares(sigmoid(w)))

res = sigmoid(numpy.array([1,1]))
print res

