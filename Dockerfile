# Use an official Node.js image as the base image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application (if using a build step, e.g. React/Angular/Vue)
# Uncomment the next line if your project has a build step
# RUN npm run build

# Expose the port your app runs on (default to 3000 for many JS apps)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
