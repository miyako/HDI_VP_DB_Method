//%attributes = {}
// ----------------------------------------------------
// User name (OS) : fmainguene
// Date et time : 04/06/18, 15:48:43
// ----------------------------------------------------
// Method : get_SystemInfo
// Description
// Get the licence information of 4D
// Parameters: $1: C_TEXT-> Name of the property to display 
// $0: C_TEXT-> information about the operating system 
// ----------------------------------------------------

C_TEXT:C284($1; $param)
C_TEXT:C284($0)
C_COLLECTION:C1488($AutorizedParameters)

// list of properties allowed to be passed in parameter
$AutorizedParameters:=New collection:C1472("accountName"; "cores"; "machineName"; "model"; "osLanguage"; "osVersion"; "physicalMemory"; "processor"; "userName")

$param:=$1

// check if parameter string is authorized
If ($AutorizedParameters.indexOf($param)>=0)
	$0:=String:C10(GetSystemInfo[$param])
Else 
	$0:="Unsupported parameter"
End if 