FROM eclipse-temurin:17-jre
RUN apt-get update && apt-get install -y python3 && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY . /app
EXPOSE 8080 8081
CMD ["sh", "-c", "python3 /app/proxy_server.py 8080 > /tmp/proxy.log 2>&1 & java -jar /app/33ovo.jar --server.port=8081"]