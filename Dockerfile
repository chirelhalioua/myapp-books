# Utiliser l'image OpenJDK 17
FROM openjdk:17-jdk-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier le projet
COPY pom.xml .
COPY src ./src

# Installer Maven et compiler l'application
RUN apt-get update && apt-get install -y maven
RUN mvn clean package -DskipTests

# Copier le JAR généré
COPY target/*.jar app.jar

# Exposer le port 8080
EXPOSE 8080

# Lancer l'application
CMD ["java", "-jar", "app.jar"]
