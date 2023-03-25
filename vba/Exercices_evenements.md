# Excercices VBA sur les événements

## Absences en rouge sur les nouvelles feuilles

On a enregistré une macro qui sélectionne toutes les cellules de la feuille active et qui applique une mise en forme conditionnelle: "mettre en rouge quand le texte contient le mot absence".

Faites en sorte que cette macro s'applique à toute les nouvelles feuilles crées dans le classeur.

	
	Sub absenceEnRouge()
		Cells.Select
		Selection.FormatConditions.Add Type:=xlTextString, String:="absence", _
			TextOperator:=xlContains
		Selection.FormatConditions(Selection.FormatConditions.Count).SetFirstPriority
		With Selection.FormatConditions(1).Font
			.Color = -16383844
			.TintAndShade = 0
		End With
		With Selection.FormatConditions(1).Interior
			.PatternColorIndex = xlAutomatic
			.Color = 13551615
			.TintAndShade = 0
		End With
		Selection.FormatConditions(1).StopIfTrue = False
		Range("A1").Select
	End Sub
	


