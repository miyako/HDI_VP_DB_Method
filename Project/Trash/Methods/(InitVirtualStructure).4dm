//%attributes = {"invisible":true}
ARRAY TEXT:C222($tt1; 1)
ARRAY LONGINT:C221($tt2; 1)
ARRAY TEXT:C222($ft1; 1)
ARRAY LONGINT:C221($ft2; 1)

SET TABLE TITLES:C601

APPEND TO ARRAY:C911($tt1; VirtualStructure.Users)
APPEND TO ARRAY:C911($tt2; 2)

SET TABLE TITLES:C601($tt1; $tt2; *)


APPEND TO ARRAY:C911($ft1; VirtualStructure.LastName)
APPEND TO ARRAY:C911($ft2; 2)
APPEND TO ARRAY:C911($ft1; VirtualStructure.FirstName)
APPEND TO ARRAY:C911($ft2; 3)

SET FIELD TITLES:C602([(Products):2]; $ft1; $ft2; *)