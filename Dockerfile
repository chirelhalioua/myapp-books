# Utiliser l'image officielle OpenJDK
FROM openjdk:17-jdk-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier JAR généré
COPY target/HelloWorld-1.0-SNAPSHOT.jar app.jar

# Exposer le port 8080 pour Spring Boot
EXPOSE 8080

# Lancer l'application
CMD ["java", "-jar", "app.jar"]
