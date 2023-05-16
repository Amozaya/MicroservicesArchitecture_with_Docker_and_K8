# base image Nginx
FROM node:16

# who is the owner/creater
LABEL MAINTAINER=olegf23

# Create app directory
WORKDIR /app

# copy app to the container app directory
COPY app/ .

# port 3000
EXPOSE 3000

# install the app
RUN npm install

# execute command run
CMD ["node", "app.js"]

# docker build
# docker images to confirm the name
# docker run
# docker ps as well as localhost