# Utiliser l'image officielle OpenJDK pour Java 17
FROM openjdk:17-jdk-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers Maven et les dépendances
COPY pom.xml .
COPY src ./src

# Compiler le projet
RUN apt-get update && apt-get install -y maven
RUN mvn clean package -DskipTests

# Copier le JAR généré
COPY target/*.jar app.jar

# Exposer le port 8080 pour l'application Spring Boot
EXPOSE 8080

# Lancer l'application
CMD ["java", "-jar", "app.jar"]
