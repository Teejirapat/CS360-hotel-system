FROM python:3.8-slim-buster


RUN pip3 install flask pymongo requests bcrypt gevent WSGIServer qrcode libscrc
CMD ["python3","flask","run","--host=0.0.0.0"]
