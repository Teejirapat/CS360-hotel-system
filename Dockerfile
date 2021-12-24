FROM python:3.8-slim-buster


COPY servermain.py ./
RUN pip3 install flask pymongo requests bcrypt gevent WSGIServer qrcode libscrc
COPY requirements.txt requirements.txt 
CMD ["python3","servermain.py"]
