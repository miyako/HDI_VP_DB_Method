//%attributes = {"invisible":true,"publishedSoap":true,"publishedWsdl":true,"preemptive":"capable"}
C_LONGINT:C283($param)
C_TEXT:C284(result)
SOAP DECLARATION:C782($param; Is longint:K8:6; SOAP input:K46:1; "param")

Waiting

result:=JSON Stringify:C1217(ds:C1482.Countries.query("IDContinent=:1 or IDContinent=:2"; 4; 6).toCollection())

SOAP DECLARATION:C782(result; Is text:K8:3; SOAP output:K46:2; "result")