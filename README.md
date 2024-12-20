# Projet de débug d'une application banque du département d'un IUT

## Prérequis de téléchargement

• Installer le **JRE 11.0.23** (version la plus stable) : https://mega.nz/file/1Moh1TKS#pz5OhyyG30RYulkoADggj8sWrznYTogOxA3GqCV-OKw

• Installer **Tomcat 8.5.100** (version la plus stable) : https://mega.nz/file/JdBXkTTA#YmSab4hDWu2IzTHA1R63Q2d-O0sX1MibjpzDEwmbpZo

• Installer la version récente de **MYSQL** : https://dev.mysql.com/downloads/installer/

• Installer la version récente de **MySQL Workbench** : https://dev.mysql.com/downloads/workbench/

• (Optionnel) Installer **mysql-connector-j-8.0.33** : https://mega.nz/file/tZJRFRia#mPZxy6UZnlx22wbhFO1UBAmFlKKLXeKaYP_lMmQdIhw



## Configuration de la variable JAVA_HOME 

• Sélectionner variable d'environnement

![Capture d’écran 2024-10-10 161453](https://github.com/user-attachments/assets/84c5bff7-2874-43a1-9fca-7bed31ffd7d5)

• Cliquer sur "nouvelle" dans la partie "variables systèmes"

![Capture d’écran 2024-10-10 161556](https://github.com/user-attachments/assets/7a9971f5-4222-4a0a-a0e4-84c54c52eca3)

• Nommer la variable "JAVA_HOME"

• Mettez le chemin du JRE

  - Cliquer sur ok

![Capture d’écran 2024-10-10 161648](https://github.com/user-attachments/assets/22b98d87-c6f8-420b-ab77-2c197848dd5e)



## Configuration de MYSQL et de WorkBench

• Télécharger la version actuelle (8.0.34) de MYSQL Installer en 331 Mo : https://dev.mysql.com/downloads/installer/

  + Choisir le type de Setup "Server only"
 
  + Suivre les étapes par défaut
 
  + Ajouter un produit MySQL Server 8.0.x
 
  + Télécharger et installer le produit ajouté
 
  + Configuration du serveur
 
    - Laisser le port à 3306
  
    ![287487949-7dde225f-04bb-46f3-ba13-15e2763937d0](https://github.com/user-attachments/assets/5b21691e-9a50-483d-8192-de17ff8e27c9)
   
    - Choisir un mot de passe pour l'user "root"

    ![287488027-dfdd1b83-5440-4128-b049-412e33f995d3](https://github.com/user-attachments/assets/64df5731-226b-4090-81c8-e4113da3de77)

    - (Optionnel) Créer un utilisateur en appuyant sur le bouton "add user"
  
      ![287488586-f68c01a9-fcee-48e0-94ea-630462310d6b](https://github.com/user-attachments/assets/bf905570-2587-4353-9eea-0b02920b98c9)

      * Choisir le username
  
      * Host = localhost
  
      * Choisir le mot de passe et le confirmer
  
      * Cliquer sur le bouton "ok" pour confirmer
  
      * Choisir les options par défauts pour le reste de la configuration
   
      ![287488062-337d5c99-bc0a-49ce-8b47-2989e924e504](https://github.com/user-attachments/assets/7157b718-271d-4627-8bd2-f1d91b79a3ec)


• Connexion à la BDD depuis MySQL Workbench

  + Créer une connexion MySQL
  
  + Ajoutez les identifiants
  
    - Connection Name -> Nommer la connexion
  
    - Hostname = localhost
  
    - Port -> seulement le changer si le port par défaut du serveur MySQL (3306) a été modifié pendant l'installation
  
    - Username
  
    - Password -> store in vault -> taper le mot de passe de l'utilisateur
  
    - (Optionnel) Tester la connection avec le bouton "Test Connection"
  
    - Appuyer sur le bouton "ok" pour confirmer
  
    ![287488152-7737f7f7-c99b-430c-a5dc-5fa66fd6dd05](https://github.com/user-attachments/assets/15a4e071-8201-4b09-80b8-78f5259b09f3)

    
  + Créer un schéma de base de données (4ème icône en haut) -> nommer la "banque" -> appuyer sur le bouton "Apply" en bas et confirmer une nouvelle fois dans l'interface qui apparaîtra
  
  ![287488281-6b0315bc-a8e6-4631-b95f-783180dfb72e](https://github.com/user-attachments/assets/f38638e0-3226-4194-ae5b-28516bccc24c)

    
  + Dans le navigateur, appuyer sur le bouton "Schemas" en bas
  
  + Double-cliquer sur le schéma de base de données ajouté (après avoir cliqué, celle-ci obtiendra une police en gras)
  
  ![287488301-dd3871b8-05a6-4b00-b523-0726eec239ff](https://github.com/user-attachments/assets/ed7589d1-8ed2-4bc0-882e-5ba14e4973d2)
    
  + Ouvrir le fichier dumpSQL.sql qui est dans le dossier "scripts" du projet /projet/script/dumpSQL.sql (pour ouvrir le script, appuyer sur le deuxième bouton en haut)
  
  ![287488714-77adb28e-f1fb-454b-9858-4c4f7cacfe38](https://github.com/user-attachments/assets/7d66f70a-097f-40fc-a884-19bc67625f36)

  + Exécuter le script (bouton de l'éclair)
  
  ![287488493-8994f33e-c7c9-48f5-83a6-708025834c25](https://github.com/user-attachments/assets/278814af-06a8-4cdc-9c16-405f4004fadd)
    
  + Recréer un schéma "banque_test" et refaire les mêmes étapes ci-dessus mais avec le fichier "dumpSQL_JUnitTest"

## Configuration du projet sur IntelliJ

• Cliquer sur "Run" et aller dans "Edit Configurations"

![Capture d’écran 2024-10-10 16149849](https://github.com/user-attachments/assets/848367e0-1109-4347-ae8e-fc55970dfb20)

• Cliquer sur "+" et créer les configurations maven et tomcat

![Capture d’écran 2024-10-10 165958](https://github.com/user-attachments/assets/1701ef2f-182a-4441-893c-c3ecfbacf785)

• Configuration Maven (sert pour les tests)

![Capture d’écran 2024-10-10 164350](https://github.com/user-attachments/assets/3d9dab50-aa30-4061-8750-dacc94983cb0)

• Configuration de Tomcat (sert pour le déploiement de l'application)

![Capture d’écran 2024-10-10 164449](https://github.com/user-attachments/assets/e97830b2-555d-427a-9634-ad3cb0f1cc7c)

![Capture d’écran 2024-10-10 164504](https://github.com/user-attachments/assets/ac62a148-01ef-47f1-b495-2f7eae702884)

• Cliquer sur l'icône de base de données

![Capture d’écran 2024-10-10 165026](https://github.com/user-attachments/assets/9dc695ca-1b2a-4b2d-a038-cb83650c24f5)

  - Cliquer sur "+" et créer les bases de données correspondants à la capture d'écran

  ![375430910-243866ae-fa28-474a-b928-8922207b3bdc](https://github.com/user-attachments/assets/fcbe64b3-400c-460d-8bb0-bd2108bba570)

  - Ayez une base de donnée appelé banque et une base de donnée appelé banque_test

  ![Capture d’écran 2024-10-10 165348](https://github.com/user-attachments/assets/6b1e986c-97f3-4a09-908f-4407c2256a79)

• Après avoir finaliser toutes ces configurations, lancer Tomcat

![Capture d’écran 2024-10-10 165504](https://github.com/user-attachments/assets/66590d0a-94e2-47fe-b9ce-59f6d051f633)







