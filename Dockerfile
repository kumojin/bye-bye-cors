FROM node@sha256:a8ba58f54e770a0f910ec36d25f8a4f1670e741a58c2e6358b2c30b575c84263
COPY . /code
WORKDIR /code
RUN npm install
EXPOSE 3000
CMD node index.js
