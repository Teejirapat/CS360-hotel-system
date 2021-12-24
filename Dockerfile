FROM python:3.8-slim-buster

WORKDIR usr/src/app
# Install all requrements for our app

RUN pip3 install flask pymongo fastapi uvicorn aiofiles gevent libscrc qrcode requests bcrypt
# Install application
COPY . . 

COPY servermain.py ./


# Expose container port to outside host
EXPOSE 8082

# Run application
CMD [ "python3", "servermain.py" ]
