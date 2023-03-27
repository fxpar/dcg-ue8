# Annale 2020

## Excel
Deux fichiers Excel sont fournis:
* l'un sans le module VBA (les macros à compléter sont dans une simple feuille)
* l'autre avec le module VBA contenant les macros à compléter
* [x] Créer la correction

## Banque de question
Ensemble des questions avec la correction en feedback

## Base de donnée
Je n'ai pas trouvé un listing propre pour le port de Bordeaux. Par contre le porte de Nantes Saint Nazaire fournit une [superbe interface](https://swing.nantes.port.fr/fr/liste/128/arrivees) avec export Excel. Les données d'escale et sur les consignataires viennent donc de là. Les données manquantes ont été ajoutées.


Les données ont été altérées pour correspondre aux questions de l'annale.

Les données sur les entreprises proviennent d'une base de l'usine nouvelle.


Idéalement on pourrait améliorer la cohérence des données:
* [ ] type de marchandise en relation avec le type de navire
* [ ] longueur en relation avec la longueur de l'emplacement
* [ ] tirant d'eau en relation avec le tirant d'eau de l'emplacement
* [ ] tirant d'eau en relation avec les opérations et le tonnage chargé ou déchargé

### Questions SQL

**Écrire en langage SQL les requêtes permettant d’obtenir les informations suivantes : **

*	Le pavillon du navire immatriculé 9776418.
*	Le nombre d’opérations de l’escale n° 20200524007 dont le libellé est Déchargement.
*	La liste des agents consignataires (numéro, raison sociale) n’ayant encore jamais pris en charge d’escale.
*	La liste des clients (identifiant, raison sociale, tonnage total) pour lesquels des opérations ont été réalisées pour un tonnage total supérieur à 1000 tonnes.
*	La liste des navires (numéro, nom) de plus grande longueur que le navire ST EXUPÉRY et qui ont fait escale en 2019 (date de début).


