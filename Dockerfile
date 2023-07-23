FROM node:20.5.0-bookworm-slim

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y curl && \
    npm install -g n && \
    n latest

WORKDIR /app

COPY . .

RUN npm install

CMD ["/app/run.sh"]