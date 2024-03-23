# This is dockerfile to buils Custom Image
# Custom Image for HTML code

FROM ubuntu
LABEL maintainer="Rajesh Shinde"
ENV pkg_name nginx
RUN apt-get update
RUN apt-get install $pkg_name
COPY index.html /var/www/html
EXPOSE 80
CMD ["nginix","-g", "daemon off"]
