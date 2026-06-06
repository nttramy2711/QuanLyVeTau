FROM tomcat:9.0-jdk11-openjdk
RUN rm -rf /usr/local/tomcat/webapps/*
# Lưu ý: Nhóm 14 nhớ đổi tên "final.war" bên dưới cho đúng với tên file .war dự án của nhóm nha
COPY target/final.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
