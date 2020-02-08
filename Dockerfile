FROM node

RUN apt-get update && apt-get upgrade -y \
    && apt-get clean

RUN mkdir /app
WORKDIR /app

COPY ./frontend/package.json /app/
COPY ./frontend/package-lock.json /app/

RUN npm install

COPY ./frontend/src /app/src

EXPOSE 4000

CMD [ "npm", "start" ]
