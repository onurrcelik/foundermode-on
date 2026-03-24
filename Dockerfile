# Use official Nginx alpine image
FROM nginx:alpine

# Copy static files to Nginx's default serve directory
COPY index.html /usr/share/nginx/html/index.html
COPY apply.html /usr/share/nginx/html/apply.html
COPY logos/ /usr/share/nginx/html/logos/

# Expose port 80
EXPOSE 80

# Nginx starts automatically
CMD ["nginx", "-g", "daemon off;"]
