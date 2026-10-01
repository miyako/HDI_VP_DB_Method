If (Form event code:C388=On VP Ready:K2:59)
	OBJECT SET ENABLED:C1123(*; "Update_Button"; True:C214)
	VP IMPORT DOCUMENT("ViewProArea1"; FilePathMethod)
End if 