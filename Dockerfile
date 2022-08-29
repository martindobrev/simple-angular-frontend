FROM nginx:1.21.5
COPY /home/jenkins/agent/dist/simple-angular-frontend /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf
#COPY default.conf.template /etc/nginx/templates
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]