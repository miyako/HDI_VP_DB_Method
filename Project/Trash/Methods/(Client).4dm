//%attributes = {"invisible":true}

C_LONGINT:C283($1)
C_TEXT:C284($0)
WEB SERVICE SET PARAMETER:C777("param"; $1)
WEB SERVICE CALL:C778("http://127.0.0.1/4DSOAP/"; "4DSOAP#Pre_getAfricanCountries"; "Pre_getAfricanCountries"; "http://www.4d.com/namespace/default"; Web Service dynamic:K48:1)

If (OK=1)
	WEB SERVICE GET RESULT:C779($0; "result"; *)  // Memory clean-up on the final return value.
	
End if 