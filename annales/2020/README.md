# Annale 2020

## Excel
Deux fichiers Excel sont fournis:
* l'un sans le module VBA (les macros à compléter sont dans une simple feuille)
* l'autre avec le module VBA contenant les macros à compléter
* [x] Créer la correction

## Banque de question

Ensemble des questions avec la correction en feedback

* 2020
  * SQL (9)
  * Réseau et sécurité (2)
  * RGPD (3)
  * VBA (3)

## Base de donnée


* Navire (🔑numOMI, nomNavire, longueur, largeur, tirantdEauMax, idTypeNavire, libelléTypeNavire, #️⃣ idPays)
* Marchandise (🔑idMarchandise, LibelléMarchandise)
* Pays (🔑idPays, pavillon, pays)
* Emplacement (🔑IdEmpl, 🔑idQuai, longueurEmpl, tirantEauEmpl)
* Quai (🔑idQuai, nomQuai)
* Client (🔑idClient, raisonSocialeClient, adrRueClient, CPClient, adrVilleClient, mailClient, telClient)
* Escale (🔑idEscale, dateDébut, dateFin, tirantdEauArrivée, tirantdEauDépart, idAgent, numOMI, #️⃣ idQuai, #️⃣ idEmpl)
* AgentConsignataire (🔑idAgent, raisonSocialeAgent, adrRueAgent, CPAgent, adrVilleAgent, mailAgent, telAgent)
* Opération (🔑idOpération, libelléOpération)
* CompositionCargaison (🔑idEscale, 🔑idOpération, 🔑idMarchandise, 🔑idClient, tonnageMarchandise)



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


	-- a)	Le pavillon du navire immatriculé 9776418
	-- SELECT pavillon
	-- FROM Navire N, Pays P
	-- WHERE N.idPays = P.idPays 
	-- AND numOMI = 9776418;

	-- b)	Le nombre d’opérations de l’escale n°20200524007 dont le libellé est Déchargement.
	-- SELECT COUNT(*) 
	-- FROM Opération O, CompositionCargaison C
	-- WHERE O.idOpération = C.idOpération
	-- AND idEscale = 20200524007
	-- AND libelléOpération = "Déchargement"

	--c)	La liste des agents consignataires (numéro, raison sociale) n’ayant encore jamais pris en charge d’escale.
	-- SELECT IdAgent, RaisonSocialeAgent
	-- FROM AgentConsignataire
	-- WHERE idAgent NOT IN  (SELECT idAgent 
	--     				       FROM Escale)


	-- d)	La liste des clients (identifiant, raison sociale, tonnage total) pour lesquels
	-- des opérations ont été réalisées 
	-- pour un tonnage total supérieur à 1000 tonnes
	-- SELECT CL.IdClient, RaisonSocialeClient, SUM (TonnageMarchandise)
	-- FROM CLIENT CL, CompositionCargaison CO
	-- WHERE CO.idClient = CL.idClient
	-- GROUP BY CL.idClient, raisonSocialeClient
	-- HAVING SUM (tonnageMarchandise) > 1000


	-- e)	La liste des navires (numéro, nom) de plus grande longueur que le navire ST EXUPERY et qui ont fait escale en 2019 (date de début).
	SELECT N.NumOMI, NomNavire 
	FROM Navire N, Escale E
	WHERE N.numOMI = E.numOMI 
	AND strftime("%Y",dateDébut) = "2019" -- version sql: Year(dateDébut) = 2019
	AND longueur > (SELECT longueur 
	  FROM NAVIRE 
	WHERE nomNavire = "ST EXUPÉRY")



