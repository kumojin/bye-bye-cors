FROM node@sha256:3953ec6a2c10154a58ccf4ba48083ddfe3f8641d63f0d1d5cb8a4a78169123a7
COPY . /code
WORKDIR /code
RUN npm install
EXPOSE 3000
CMD node index.js
