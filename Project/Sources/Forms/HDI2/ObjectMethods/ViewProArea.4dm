If (Form event code:C388=On VP Ready:K2:59)
	OBJECT SET ENABLED:C1123(*; "Next_Button"; True:C214)
	FIRST RECORD:C50([Recipes:6])
	VP IMPORT DOCUMENT("ViewProArea"; FilePathDB)
End if 