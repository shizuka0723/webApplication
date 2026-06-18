# 建構 Docker Image
# 1. 使用 OpenJDK 11 image
FROM openjdk:11

# 建立程式資料夾(指的是在容器裡面,非實體主機目錄)
RUN mkdir /app

# 將可執行的程式放在 /app 內
COPY ./target/webapplication-1.0-SNAPSHOT.jar /app

# 設定執行工作目錄
WORKDIR /app

EXPOSE 8080

# 執行程式
ENTRYPOINT ["java", "-jar", "webapplication-1.0-SNAPSHOT.jar"]