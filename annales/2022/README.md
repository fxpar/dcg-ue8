# Annale 2022

## Excel
* Fichier de travail ok
* [ ] Créer le corrigé

## Base de données
* Les durée des soins et noms de clients sont fictifs
* Les contraintes de relation ne sont pas incluses dans la version sqlite (.db)

### Schema

* CLIENT (🔑numClient, nomClient, prénomClient, adresseRueClient, cpClient, adrVilleClient, mailClient, telClient)
* SEJOUR (🔑CodeSéjour, LibelléSéjour)
* RESERVER (🔑numClient, CodeSéjour, DateDébutSéjour)
* PLANIFIER (🔑numClient,🔑dateSoin,🔑codeSoin, heureSoin, numPersonnel)
* SOIN (🔑codeSoin, libelléSoin, duréeSoin, #️⃣ codeSalon)
* SALON (🔑codeSalon, libelléSalon, nombreCabines)
* PERSONNEL (🔑numPersonnel, nomPersonnel, prénomPersonnel, #️⃣ codeSalon)



### SQL

a)	La liste des clients (numéro, nom et prénom) qui ont réservé un séjour "MER & MAMAN BEBE" ayant débuté en janvier 2022.

b)	Le nombre de soins par salon (code, nombre de soins) dont la durée est supérieure à 60 minutes.

c)	La liste des soins (code et libellé) qui ne sont pas planifiés le 27 janvier 2022.

d)	La liste des séjours (code et libellé) réservés par plus de 20 clients.

## Banque de question
Ensemble des questions avec la correction en feedback

* 2022
  * SQL (8)
  * VBA (3)