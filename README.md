# factorial-digits
This program focuses on the implementation of a python file in docker. The python file uses a integer input and returns the sum of the digits of the factorial of the input variable.

The requiered files to build the docker image is the Main.py, requirements.txt in Dockerfile. These can be found in the daniel_du_toit.tar.gz file. To create the image use the following commands:
For Windows
'''
$docker build -t "factorial-digits" .
'''
For Linux
$docker build -t 'factorial-digits' .

The python script can be run in a docker container, for Windows and Linux, using the following command:
$docker run --rm factorial-digits 100
where the 100 can be replaced with the desired input integer.
