FROM node:lts

WORKDIR /server

RUN npm install -g json-server

# copie le json dans le dossier server
COPY db.json ./

ENTRYPOINT [ "json-server", "db.json", "--host", "0.0.0.0" ]