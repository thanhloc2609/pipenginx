FROM ubuntu
RUN apt-get update -y
RUN apt-get upgrade -y
RUN ap-get install nginx -y
RUN mkdir config-site
COPY default /config-site
WORKDIR config-site
COPY ./default /etc/nginx/sites-available/
COPY mycode /config-site/mycode
CMD ["nginx", "-g", "daemon off;"]
