FROM nginx:alpine

# Copy the HTML file and favicon
COPY index.html /usr/share/nginx/html/index.html
COPY favicon.svg /usr/share/nginx/html/favicon.svg

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
