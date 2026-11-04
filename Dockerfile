
# Use the official Node.js 16 image as the base environment
FROM node:16

# Set the working directory inside the Docker container
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install the application dependencies listed in package.json
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Make port 3000 available for the application
EXPOSE 3000

# Start the Node.js application when the container runs
CMD ["npm", "start"]
