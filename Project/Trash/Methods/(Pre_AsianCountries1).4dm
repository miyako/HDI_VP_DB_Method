//%attributes = {"invisible":true,"publishedSoap":true}
C_LONGINT:C283(param)
C_TEXT:C284(result)
SOAP DECLARATION:C782(param; Is longint:K8:6; SOAP input:K46:1; "param")
SOAP DECLARATION:C782(result; Is text:K8:3; SOAP output:K46:2; "result")

DELAY PROCESS:C323(Current process:C322; 60)  //delay for second

result:=JSON Stringify:C1217(ds:C1482.Countries.query("IDContinent=:1"; 2).toCollection())