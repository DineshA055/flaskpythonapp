FROM python:3.9-slim-buster
WORKDIR /app
COPY . .
RUN install python3-pip
RUN install pip install flask
RUN python3 app.py
EXPOSE 5000
ENV FLASK_APP=my_flask.py
CMD ["flask", "run", "--host", "0.0.0.0"]
