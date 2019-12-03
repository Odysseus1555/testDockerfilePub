FROM openjdk:8-jre-alpine
LABEL bjh <goatbjh@qq.com>
ENV TZ=Asia/Shanghai
RUN apk add --update --no-cache tzdata && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone
EXPOSE 8000
WORKDIR /app
COPY centerds-0.0.1-SNAPSHOT.jar /app/
CMD ["java", "-jar", "/app/centerds-0.0.1-SNAPSHOT.jar"]