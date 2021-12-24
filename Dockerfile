FROM python:3.8-slim-buster

WORKDIR /
RUN pip3 install flask pymongo requests bcrypt gevent WSGIServer qrcode libscrc
CMD ["python3","servermain.py"]
