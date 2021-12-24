FROM python:3.8-slim-buster

WORKDIR usr/src/app
# Install all requrements for our app
COPY requirements.txt requirements.txt 
RUN pip3 install -r requirements.txt
# Install application
COPY . . 

COPY servermain.py ./


# Expose container port to outside host
EXPOSE 8082

# Run application
CMD [ "python3", "servermain.py" ]
