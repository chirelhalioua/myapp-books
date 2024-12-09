**MyApp**

**Description**
MyApp est une application Spring Boot conçue pour gérer une collection de livres. Elle offre une API REST simple permettant d'ajouter, consulter, modifier et supprimer des livres. Le projet utilise Hibernate pour la gestion des entités et H2 comme base de données en mémoire.

---

**Caractéristiques**
- CRUD complet pour les livres (Create, Read, Update, Delete)
- Base de données H2 en mémoire pour faciliter le développement et les tests
- Gestion des dépendances via Maven
- API REST testable avec des outils comme Postman

---

**Prérequis**
Assurez-vous d'avoir installé les éléments suivants :
- [Java 17 ou supérieur](https://www.oracle.com/java/technologies/javase-downloads.html)
- [Maven](https://maven.apache.org/install.html)
- Un IDE comme IntelliJ IDEA ou Eclipse

---

**Installation**

1. **Cloner le dépôt**
   ```bash
   git clone https://github.com/votre-utilisateur/MyApp.git
   cd MyApp
   ```

2. **Configurer le projet**
   - Ouvrez le projet dans votre IDE préféré.
   - Assurez-vous que le JDK 17 (ou supérieur) est configuré.

3. **Construire le projet**
   ```bash
   mvn clean install
   ```

4. **Lancer l'application**
   ```bash
   mvn spring-boot:run
   ```

---

**API Endpoints**
Voici une liste des principaux endpoints de l'application :

**Books**
| Méthode  | URL             | Description                    | Corps de la requête         |
|----------|-----------------|--------------------------------|-----------------------------|
| `GET`    | `/api/books`    | Récupère tous les livres       | _Aucun_                     |
| `GET`    | `/api/books/{id}` | Récupère un livre par ID       | _Aucun_                     |
| `POST`   | `/api/books`    | Ajoute un nouveau livre        | `{ "title": "Titre", "author": "Auteur" }` |
| `DELETE` | `/api/books/{id}` | Supprime un livre par ID       | _Aucun_                     |

---

**Exemples de requêtes**
Voici des exemples de requêtes que vous pouvez effectuer via **Postman** ou **cURL**.

### 1. **Ajouter un livre**
**POST** `/api/books`  
Corps de la requête :
```json
{
  "title": "Le Petit Prince",
  "author": "Antoine de Saint-Exupéry"
}
```

2. **Récupérer tous les livres**
**GET** `/api/books`

Réponse attendue :
```json
[
  {
    "id": 1,
    "title": "Le Petit Prince",
    "author": "Antoine de Saint-Exupéry"
  }
]
```

3. **Supprimer un livre**
**DELETE** `/api/books/1`

---

 **Base de données H2**
L'application utilise une base de données en mémoire H2. Une interface web est disponible pour consulter et manipuler la base de données.

 **Accéder à la console H2**
1. Lancer l'application.
2. Ouvrir un navigateur et aller sur :  
   [http://localhost:8080/h2-console](http://localhost:8080/h2-console)

 **Configuration de la console**
- **JDBC URL** : `jdbc:h2:mem:testdb`
- **User** : `sa`
- **Password** : (vide par défaut)

---

 **Technologies utilisées**
- **Java 17**
- **Spring Boot 2.7.x**
- **H2 Database**
- **Hibernate**
- **Maven**

---

 **Contribuer**
Les contributions sont les bienvenues ! Si vous souhaitez améliorer ce projet :

1. Forkez le dépôt.
2. Créez une branche pour votre fonctionnalité :
   ```bash
   git checkout -b ma-fonctionnalite
   ```
3. Commitez vos modifications :
   ```bash
   git commit -m "Ajout d'une fonctionnalité X"
   ```
4. Poussez votre branche :
   ```bash
   git push origin ma-fonctionnalite
   ```
5. Créez une Pull Request.

---

**Auteur**
Créé par **Chirel Halioua**.  
Pour toute question, contactez-moi à **chirelhalioua@gmail.com**.

---

**Licence**
Ce projet est sous licence [MIT](https://opensource.org/licenses/MIT)
