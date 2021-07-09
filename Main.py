#This program finds the sum of the individual digits of the factorial
#of the input variable
#=============================================================================
import numpy as np
import argparse

#initialising argparse to use external variable
#argparse allows the direct use of an integer variable
parser = argparse.ArgumentParser()
parser.add_argument('num', metavar='num', type=int, help='enter a number')
args = parser.parse_args()
input_num = args.num

#finding the factorial of variable input_num
factorial = np.math.factorial(input_num)

#calculating the sum of the digits of the variable factorial
#this method is used due to not being able to cast variables
result = 0
while factorial > 0:
    remainder = factorial % 10
    result = result + remainder
    factorial = factorial//10       #the // is used avoid overflow error

print(result)
