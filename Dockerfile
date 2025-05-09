# Use Nginx to serve static content
FROM nginx:alpine

# Remove the default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files to nginx's static folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
