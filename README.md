# Projet de débug d'une application banque du département d'un IUT

## Prérequis

• Installer le **JRE 11.0.23** (version la plus stable) : https://mega.nz/file/1Moh1TKS#pz5OhyyG30RYulkoADggj8sWrznYTogOxA3GqCV-OKw

• Installer **Tomcat 8.5.100** (version la plus stable) : https://mega.nz/file/JdBXkTTA#YmSab4hDWu2IzTHA1R63Q2d-O0sX1MibjpzDEwmbpZo

• Installer la version récente de **MYSQL** : 
https://dev.mysql.com/downloads/installer/

• Installer **mysql-connector-j-8.0.33** : https://mega.nz/file/tZJRFRia#mPZxy6UZnlx22wbhFO1UBAmFlKKLXeKaYP_lMmQdIhw

• Configurer la variable JAVA_HOME dans les variables d'environnement système avec le JRE

![Capture d’écran 2024-10-10 141306](https://github.com/user-attachments/assets/c0674123-fcfc-40c5-a91d-d6ed1bc5448f)

![Capture d’écran 2024-10-10 141527](https://github.com/user-attachments/assets/c3e2578e-494a-4a78-8e1b-bd8ff27ee257)


## Configuration de MYSQL

• Télécharger la version actuelle (8.0.34) de MYSQL Installer en 331 Mo : https://dev.mysql.com/downloads/installer/

  ▪ Choisir le type de Setup "Server only"
 
  ▪ Suivre les étapes par défaut
 
  ▪ Ajouter un produit MySQL Server 8.0.x
 
  ▪ Télécharger et installer le produit ajouté
 
  ▪ Configuration du serveur
 
   ---> Laisser le port à 3306
  
   ![image](https://github.com/Raider472/QualiteDevTP/assets/60116030/7dde225f-04bb-46f3-ba13-15e2763937d0)
   
   ---> Choisir un mot de passe pour l'user "root"
  
   ![image](https://github.com/Raider472/QualiteDevTP/assets/60116030/dfdd1b83-5440-4128-b049-412e33f995d3)
      
   ---> (Optionnel) Créer un utilisateur en appuyant sur le bouton "add user"
  
   ![addUserRouge](https://github.com/Raider472/QualiteDevTP/assets/60116030/f68c01a9-fcee-48e0-94ea-630462310d6b)
      
   ---> Choisir le username
  
   ---> Host = localhost
  
   ---> Choisir le mot de passe et le confirmer
  
   ---> Cliquer sur le bouton "ok" pour confirmer
  
   ---> Choisir les options par défauts pour le reste de la configuration
   
   ![image](https://github.com/Raider472/QualiteDevTP/assets/60116030/337d5c99-bc0a-49ce-8b47-2989e924e504)


• Télécharger la version actuelle de MySQL Workbench pour votre OS : https://dev.mysql.com/downloads/workbench/

• Connexion à la BDD depuis MySQL Workbench

  ▪ Créer une connexion MySQL
  
  ▪ Ajoutez les identifiants
  
   ---> Connection Name -> Nommer la connexion
  
   ---> Hostname = localhost
  
   ---> Port -> seulement le changer si le port par défaut du serveur MySQL (3306) a été modifié pendant l'installation
  
   ---> Username
  
   ---> Password -> store in vault -> taper le mot de passe de l'utilisateur
  
   ---> (Optionel) Tester la connection avec le bouton "Test Connection"
  
   ---> Appuyer sur le bouton "ok" pour confirmer
  
   ![Passwordwork](https://github.com/Raider472/QualiteDevTP/assets/60116030/7737f7f7-c99b-430c-a5dc-5fa66fd6dd05)
    
  ▪ Créer un schéma de base de données (4ème icône en haut) -> nommer la "banque" -> appuyer sur le bouton "Apply" en bas et confirmer une nouvelle fois dans l'interface qui apparaîtra
  
  ![creerSchema](https://github.com/Raider472/QualiteDevTP/assets/60116030/050a4df3-5a33-4486-903f-fce473825c8d)
    
  ![image](https://github.com/Raider472/QualiteDevTP/assets/60116030/6b0315bc-a8e6-4631-b95f-783180dfb72e)
    
  ▪ Dans le navigateur, appuyer sur le bouton "Schemas" en bas
  
  ▪ Double-cliquer sur le schéma de base de données ajouté (après avoir cliqué, celle-ci obtiendra une police en gras)
  
  ![BanqueRouge](https://github.com/Raider472/QualiteDevTP/assets/60116030/dd3871b8-05a6-4b00-b523-0726eec239ff)
    
  ▪ Ouvrir le fichier dumpSQL.sql qui est dans le dossier "scripts" du projet /projet/script/dumpSQL.sql (pour ouvrir le script, appuyer sur le deuxième bouton en haut)
  
  ![OuvrirScripte](https://github.com/Raider472/QualiteDevTP/assets/60116030/77adb28e-f1fb-454b-9858-4c4f7cacfe38)
    
  ▪ Exécuter le script (bouton de l'éclair)
  
  ![Eclair](https://github.com/Raider472/QualiteDevTP/assets/60116030/8994f33e-c7c9-48f5-83a6-708025834c25)
    
  ▪ Recréer un schéma "banquetest" et refaire les mêmes étapes ci-dessus mais avec le fichier "dumpSQL_JUnitTest"
