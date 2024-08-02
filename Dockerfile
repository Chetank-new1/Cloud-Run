# Use the official Node.js image as a base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose the port your app runs on
EXPOSE 8080

# Set environment variable for port
ENV PORT=8080

# Define the command to run your app
CMD ["npm", "run", "dev"]
