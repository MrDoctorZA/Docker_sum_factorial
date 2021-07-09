FROM python:3.8-slim-buster


#Make directory for application
WORKDIR /app

#Install requirements
COPY requirements.txt .
RUN pip install -r requirements.txt

#Copy source code
COPY . .

#CMD ["python", "Main.py"]
ENTRYPOINT ["python", "Main.py"]
