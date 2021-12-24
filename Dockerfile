FROM node:16


COPY Deploy_servermain.sh /Deploy_servermain.sh
RUN chmod +x /Deploy_servermain.sh
ENTRYPOINT ["/Deploy_servermain.sh"]
