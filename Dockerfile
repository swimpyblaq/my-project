# Use official Node.js image as the base
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port (change this if your app uses a different port)
EXPOSE 3000

# Command to start the app
CMD ["node", "server.js"]
