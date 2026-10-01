//%attributes = {}
// ----------------------------------------------------
// User name (OS) : fmainguene
// Date et time : 04/06/18, 15:48:43
// ----------------------------------------------------
// Method : InitVirtualStructure
// Description
// Initializing the list of fields that the user can call in 4D View Pro
// ----------------------------------------------------

ARRAY TEXT:C222($field_Titles; 0)
ARRAY LONGINT:C221($field_Num; 0)

APPEND TO ARRAY:C911($field_Titles; "Name")
APPEND TO ARRAY:C911($field_Titles; "Ingredients")
APPEND TO ARRAY:C911($field_Titles; "Directions")
APPEND TO ARRAY:C911($field_Titles; "CookT")
APPEND TO ARRAY:C911($field_Titles; "PreparationT")
APPEND TO ARRAY:C911($field_Titles; "Cal")
APPEND TO ARRAY:C911($field_Titles; "Nut1Num")
APPEND TO ARRAY:C911($field_Titles; "Nut1Label")
APPEND TO ARRAY:C911($field_Titles; "Nut2Num")
APPEND TO ARRAY:C911($field_Titles; "Nut2Label")
APPEND TO ARRAY:C911($field_Titles; "Nut3Num")
APPEND TO ARRAY:C911($field_Titles; "Nut3Label")
APPEND TO ARRAY:C911($field_Titles; "Nut4Num")
APPEND TO ARRAY:C911($field_Titles; "Nut4Label")
APPEND TO ARRAY:C911($field_Titles; "Image")
APPEND TO ARRAY:C911($field_Num; 2)
APPEND TO ARRAY:C911($field_Num; 3)
APPEND TO ARRAY:C911($field_Num; 4)
APPEND TO ARRAY:C911($field_Num; 5)
APPEND TO ARRAY:C911($field_Num; 6)
APPEND TO ARRAY:C911($field_Num; 7)
APPEND TO ARRAY:C911($field_Num; 8)
APPEND TO ARRAY:C911($field_Num; 9)
APPEND TO ARRAY:C911($field_Num; 10)
APPEND TO ARRAY:C911($field_Num; 11)
APPEND TO ARRAY:C911($field_Num; 12)
APPEND TO ARRAY:C911($field_Num; 13)
APPEND TO ARRAY:C911($field_Num; 14)
APPEND TO ARRAY:C911($field_Num; 15)
APPEND TO ARRAY:C911($field_Num; 16)
SET FIELD TITLES:C602([Recipes:6]; $field_Titles; $field_Num; *)