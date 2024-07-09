From nginx
COPY . /opt
WORKDIR /opt/angular-frontend
RUN apt update
RUN apt install nodejs npm -y
RUN npm install -g @angular/cli
# Replace the localhost with the public IP and the port 8080 with 8085 in WorkerService
RUN sed -i 's/http:\/\/localhost:8080/http:\/\/3.91.62.116:8085/' /opt/angular-frontend/src/app/services/worker.service.ts
RUN npm install
RUN ng build 
EXPOSE 30080
CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "30080"]
