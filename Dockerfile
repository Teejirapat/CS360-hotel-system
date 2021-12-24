FROM python:3.8-slim-buster

WORKDIR /app
COPY app.py ./
RUN pip3 install flask pymongo requests bcrypt gevent WSGIServer qrcode libscrc
CMD ["python3","-m","flask","run","--host=0.0.0.0"]
