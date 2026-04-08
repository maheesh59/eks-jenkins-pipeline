# Use official Node.js image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all application files
COPY . .

# Expose application port
EXPOSE 3000

# Start the Node.js app
CMD ["npm", "start"]
