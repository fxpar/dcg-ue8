# Annale 2017

## Fichier Excel

La partie Excel de l'annale a été convertie en véritable fichier Excel permettant de tester plusieurs formules.


## VBA
Version étudiant du code, à corriger et améliorer:





	Sub salaire()

		Dim REP As Boolean

		REP = MsgBox("Voulez-vous calculer le salaire d'un intervenant", vbOKCancel)

		Do While REP = vbOK

		Dim CodeInt As Integer

		Dim NBHM, NBHL, NBTOTALH, salaire, TXHOR, P1, P2, PLPRIME, PRIME As Integer

		CodeInt = InputBox("Saisir code intervenant")

		NBHM = InputBox("Saisir le total des heures de maintenance matériel effectuées")

		NBHL = InputBox("Saisir le total des heures de maintenance logiciel effectuées")

		NBTOTALH = NBHM + NBHL

		TXHOR = InputBox("Saisir le taux horaire")

		P2 = 186

		P1 = 152

		PLPRIME = 100

		PRIME = 80

		   If NBTOTALH >= P2 Then

				  salaire = (NBTOTALH - P2) * TXHOR * 1.5 + (P2 - P1) * TXHOR * 1.25 + P1 * TXHOR

				  If NBTOTALH >= P1 Then

					 salaire = (NBTOTALH - P1) * TXHOR * 1.25 + P1 * TXHOR

				  Else

					 salaire = P1 * TXHOR

				  End If

		   End If

		  If NBHL > PLPRIME Then

				  salaire = salaire + PRIME

		  Else

				  salaire = salaire

		  End If

		MsgBox ("L'intervenant" & CodeInt & "est de" & salaire & "€")

		REP = MsgBox("Voulez-vous calculer le salaire d'un intervenant", vbOKCancel)

		Loop

	End Sub 

