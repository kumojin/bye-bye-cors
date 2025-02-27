FROM node@sha256:c29271c7f2b4788fe9b90a7506d790dc8f2ff46132e1b70e71bf0c0679c8451c
COPY . /code
WORKDIR /code
RUN npm install
EXPOSE 3000
CMD node index.js
