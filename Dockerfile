# Use Nginx to serve the content
FROM nginx

# Copy your HTML files to the Nginx directory
COPY html /usr/share/nginx/html

COPY nginx/default.conf /etc/nginx/conf.d/default.conf

