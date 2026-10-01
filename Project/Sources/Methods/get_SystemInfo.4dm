//%attributes = {"invisible":true}
// ----------------------------------------------------
// User name (OS) : fmainguene
// Date et time : 04/06/18, 15:48:43
// ----------------------------------------------------
// Method : get_SystemInfo
// Description
// Get the licence information of 4D
// Parameters: $param: Text-> Name of the property to display 
// $result: Text-> information about the operating system 
// ----------------------------------------------------

#DECLARE($param : Text)->$result : Text

var $AutorizedParameters : Collection

// list of properties allowed to be passed in parameter
$AutorizedParameters:=New collection:C1472("accountName"; "cores"; "machineName"; "model"; "osLanguage"; "osVersion"; "physicalMemory"; "processor"; "userName")

// check if parameter string is authorized
If ($AutorizedParameters.indexOf($param)>=0)
	$result:=String:C10(GetSystemInfo[$param])
Else 
	$result:=Localized string("ErrorUnsupportedParameter")
End if 