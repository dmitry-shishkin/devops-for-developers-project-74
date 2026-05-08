FROM node:20
WORKDIR /app

COPY app/package.json package.json
COPY app/package-lock.json package-lock.json

RUN make install
