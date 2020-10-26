FROM node
COPY . /code
WORKDIR /code
RUN npm install
EXPOSE 3000
CMD node index.js