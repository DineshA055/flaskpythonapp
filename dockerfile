FROM python:3.9-slim-buster
WORKDIR /app
RUN apt-get update \
    && apt-get update \
    && apt-get install -y python3-pip /*

COPY requirement.txt.

RUN pip3 install flask
    
COPY . .

CMD["python3","app.py"]
