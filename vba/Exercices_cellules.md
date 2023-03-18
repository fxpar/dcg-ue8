
## Ecrire du texte dans une cellule de texte
**Ecrire bonjour dans la cellule A1**
Vous pouvez faire des essai avec l'enregistreur

Testez en écrivant directement dans la cellule où vous êtes, ou en cliquant dans une autre cellule, ou dans une cellule d'une autre feuille.

Indiquez explicitement dans quelle feuille vous souhaitez écrire (la feuille active, ou une feuille d'un certain nom)

<details><summary>Indices</summary>
Range Sheets FormulaR1C1 value
</details>


## Ecrire une formule dans une cellule
**Ecrire une formule en A1 qui additionne B1 et C1**

Vous pouvez faire des essai avec l'enregistreur
Regardez s'il y a une différence quand on clique sur le bouton référence relative avant de lancer l'enregistrement.
<details><summary>Indices</summary>
FormulaR1C1 Formula
</details>

## Gras, italique, couleur
Créez une macro qui mette la cellule active en gras, italique et un fond bleu

<details><summary>Indices</summary>
With Font
</details>




## Changer de bordure
Créez une macro qui mette la cellule active une bordure rouge

<details><summary>Indices</summary>
With Borders
</details>

## Copier et coller une cellule de texte
Créer une macro qui copie une cellule d'une feuille vers une cellule d'une autre feuille

<details><summary>Indices</summary>
Copy Paste
</details>

## Copier une formule et coller en valeur
Créer une formule en A1 qui additionne B1 et C1
Créer une macro qui copie A1 et la colle en valeur dans une cellule d'une autre feuille

<details><summary>Indices</summary>
PasteSpecial :=
</details>

## Mettre la sélection en majuscule / minuscule
Créer une macro qui mette en majuscule chaque cellule de la sélection
Créer une macro qui mette en Minuscule chaque cellule de la sélection
Créer un bouton pour lancer chacune de ces macros

<details><summary>Indices</summary>
For each UCase
</details>

## Majuscule / minuscule protégé
Créer une macro qui mette en majuscule chaque cellule de la sélection

Créer une macro qui mette en Minuscule chaque cellule de la sélection

Ajouter une sécurité pour que la macro ne plante pas si la sélection ne contient pas de cellules (par exemple, si une forme ou un graphique est sélectionné)

<details><summary>Indices</summary>
For each UCase IF
</details>

## Mettre à 0 les cellules négatives
Créer une zone avec des nombres entre -100 et 1000

Créer une macro qui mettra à 0 les cellules négatives de la selection (utile par exemple pour des simulation sur un business plan)

<details><summary>Indices</summary>
For Range If
</details>

## Coder une phrase (unicode
Ecrire une phrase dans une cellule (ou la demander à l'utilisateur)
Convertir chaque caractère dans sa valeur unicode

<details><summary>Indices</summary>
Range 
</details>

## Lister les cellules donnant une erreur
Créer un (grand tableau) et mettre des cellules en erreur (par exemple en additionnant des nombres et du texte)
Créer une macro qui écrit quelque part la liste des cellules en erreur (position et formule)

<details><summary>Indices</summary>
Range
</details>

## Convertir un chiffre en text
Utiliser le code fournit par microsoft pour convertir un chiffre en texte: 103,25 Cent trois virgule vingt cinq
Très utile pour le publipostage de contrats ou l'allocation d'actions
<details><summary>Indices</summary>
Range
</details>

## Remplacer les cellules vides par une formule
Créer une zone (par exemple dans une colonne) avec des chiffres et des cellules vides
Créez une macro qui met une formule (par exemple la somme des cellules adjacentes) seulement dans les cellules vides

<details><summary>Indices</summary>
Range Formula IsEmpty
</details>

## La même cellule dans plusieurs classeurs
Créer plusieurs classeurs contenant une feuille "cible" avec un chiffre différent en A1
Créer une macro qui va chercher dans tous les classeurs du dossier le chiffré situé en A1 de la feuille cible

<details><summary>Indices</summary>
Range
</details>

## Énumérer des dates
Créer une liste de jours fériés dans une feuille et donner un nom à cette zone
Demander à l'utilisateur une date de début et une date de fin
Enumérer toutes les dates les unes en dessous des autres sauf celles qui sont dans la liste de jours fériés

<details><summary>Indices</summary>
For Range
</details>

## Choisir une cellule
Demander à l'utilisateur de choisir une cellule (ou une plage de cellule)

<details><summary>Indices</summary>
Application.inputbox Type:=8
</details>



