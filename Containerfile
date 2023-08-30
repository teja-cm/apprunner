# Use an official Node.js image as the base
FROM node:14

# Set the working directory within the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port that the app will run on
EXPOSE 3000

# Define the command to start your Node.js app using nodemon
CMD ["npx", "nodemon", "server.js"]
