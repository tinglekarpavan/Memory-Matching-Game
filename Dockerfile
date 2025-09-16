# Use nginx as base image
FROM nginx:alpine

# Copy your game files into the nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

