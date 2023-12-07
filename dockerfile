FROM python:3.9-slim-buster
WORKDIR /app
RUN apt-get update \
    && apt-get update \
    && apt-get install -y python3-pip \
    && pip3 install flask \*
     
COPY . .

CMD ["flask", "run", "--host", "0.0.0.0"]
