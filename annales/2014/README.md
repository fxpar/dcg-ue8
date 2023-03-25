# Annale 2014

## Excel

Version 0.1 du fichier: 

* [x] copie des tables
* [ ] ajout des consignes
* [ ] vérification des données

## Correction VBA
Version étudiant à améliorer et corriger:

	Sub ValeursAides
		Dim mAideTot as intenger
		Dim mAide as intenger
		Dim nb as single
		Dim rep as text
		Rep = Imputbox("Y-at-il une ligne aidée? oui/non")
		do while rep= oui
			mAide=Imputbox("Donner le montant de l'aide reçue")
			mAide= mAidetot+mAide
			nb=nb+1
			rep = imputbox("le montant d'aide total reçu par les lignes est:")
		loop
		Msgbox("Le montant d'aide total reçue par les lignes est:")
		Msgbox(mAidetot)
		Msgbox("Le montant moyen de l'aide reçue par les lignes est:")
		Msgbox(maidetot/n)
	end sub