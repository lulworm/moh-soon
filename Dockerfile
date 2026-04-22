# Use Nginx to serve the content
FROM nginx:alpine

# Copy your HTML files to the Nginx directory
COPY . /usr/share/nginx/html

# Update Nginx config to listen on port 8080 instead of 80
RUN sed -i 's/listen\(.*\)80;/listen 8080;/' /etc/nginx/conf.d/default.conf

# Expose port 8080
EXPOSE 8080

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
