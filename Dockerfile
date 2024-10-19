FROM node@sha256:9d09fa506f5b8465c5221cbd6f980e29ae0ce9a3119e2b9bc0842e6a3f37bb59
COPY . /code
WORKDIR /code
RUN npm install
EXPOSE 3000
CMD node index.js
