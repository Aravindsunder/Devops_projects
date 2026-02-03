FROM node:18-alpine

RUN mkdir -p /project
WORKDIR /project

COPY project .

EXPOSE 3000 

CMD ["node", "server.js"]
