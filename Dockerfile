# Étape 1 : Construire l'application avec Maven
FROM maven:3.8.7-openjdk-17 AS builder
WORKDIR /app

# Copier les fichiers du projet
COPY . .

# Compiler l'application
RUN mvn clean package -DskipTests

# Étape 2 : Créer une image légère pour exécuter l'application
FROM openjdk:17-jdk-slim
WORKDIR /app

# Copier le JAR généré
COPY --from=builder /app/target/*.jar app.jar

# Exposer le port 8080
EXPOSE 8080

# Lancer l'application
CMD ["java", "-jar", "app.jar"]
