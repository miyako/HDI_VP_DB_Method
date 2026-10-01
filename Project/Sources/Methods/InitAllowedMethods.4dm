//%attributes = {"invisible":true}
// ----------------------------------------------------
// User name (OS) : fmainguene
// Date et time : 04/06/18, 15:48:43
// ----------------------------------------------------
// Method : InitAllowedMethods
// Description
// Initializing the list of methods that the user can call in 4D View Pro
// ----------------------------------------------------


ARRAY TEXT:C222($allow; 0)

APPEND TO ARRAY:C911($allow; "get_LicenceInfo")
APPEND TO ARRAY:C911($allow; "get_SystemInfo")
APPEND TO ARRAY:C911($allow; "get_OSLabel")
APPEND TO ARRAY:C911($allow; "get_ParamLabel")
APPEND TO ARRAY:C911($allow; "get_SysLabel")
APPEND TO ARRAY:C911($allow; "get_LicenceInfo")
APPEND TO ARRAY:C911($allow; "get_LicenceLabel")

SET ALLOWED METHODS:C805($allow)