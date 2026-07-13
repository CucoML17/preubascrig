FROM eclipse-temurin:21-jre 
#El "target/*.jar" detectará automáticamente el archivo empaquetado por Maven
ARG JAR_FILE=target/*.jar 
#Lo copiamos dentro del contenedor con un nombre descriptivo para el CRIG
COPY ${JAR_FILE} app_admin_documentos.jar 
#Exponemos el puerto 3002 que es el que usa tu backend
EXPOSE 3002 
ENTRYPOINT ["java", "-jar", "app_admin_documentos.jar"]