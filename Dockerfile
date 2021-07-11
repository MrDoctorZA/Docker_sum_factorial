#This Dockerfile allows the creation of the docker image
#=============================================================================
FROM python:3.8-slim-buster

#Make directory for application
WORKDIR /app

#Install requirements
COPY requirements.txt .
RUN pip install -r requirements.txt

#Copy source code
COPY . .

#Running pyhton file, use ENTRYPOINT over CMD in order to parse integer
ENTRYPOINT ["python", "Main.py"]
