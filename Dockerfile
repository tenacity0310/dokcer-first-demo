# the the nodejs image version
FROM node:14
# the directory app is made in the container, and will be the default path 
WORKDIR /app
# copy package.json into /app
COPY package.json .
# install all the dependency
RUN npm install
# COPY all the file to /app
COPY . .
# expose the port 3000
EXPOSE 3000
# running node app.mjs to make the application running
CMD [ "node", "app.mjs" ]