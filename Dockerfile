## simple nginx image
FROM nginx:latest

WORKDIR /usr/scr/app

## copy the nginx config file
COPY src/nginx-site.conf /etc/nginx/nginx.conf
## copy all the files in the /src to root of image
COPY src/ .


## expose port 80
EXPOSE 80

## run nginx
CMD ["nginx", "-g", "daemon off;"]

