# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the current directory contents into the container at /app
COPY . /app

# Expose port 3000
EXPOSE 3000

# Define the command to run the application
CMD ["node", "app.js"]
