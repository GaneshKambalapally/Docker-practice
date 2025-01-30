FROM almalinux:9
RUN dnf install nginx -y
RUN rm -rf usr/share/nginx/html/index.html
COPY index.html usr/share/nginx/html/index.html
EXPOSE 8080
CMD ["nginx","-g","daemon off;"]
LABEL author ="radhika"\
      topic = "devops" \
      duration "2 hrs"
ENV course ="btech" \
    id ="23"