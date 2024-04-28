# set base image 
FROM node:21-alpine

# Set the working diresctory in the container
WORKDIR /usr/src/app

# copy package.json and package-lock.json to the working directory
COPY package*.json ./

# install dependencies
RUN npm install

# cpoy the rest of the application code to the working directory
COPY . .

# Expose port
EXPOSE 3000

# command to run
CMD ["npm", "start"]


