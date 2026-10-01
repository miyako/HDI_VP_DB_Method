//%attributes = {"invisible":true}
// Make a loop with many computing operations
C_REAL:C285($res)
C_LONGINT:C283($var; $i)

For ($i; 1; 600000)
	$var:=258
	
	$res:=Cos:C18($var)
	$res:=Sin:C17($var)
	$res:=Tan:C19($var)
	$res:=Arctan:C20($var)
	$res:=Dec:C9($var)
	$res:=Mod:C98($var; 2)
	$res:=Abs:C99($var)
	$res:=Trunc:C95($var; 1)
	$res:=Round:C94($var; 1)
	$res:=Exp:C21($var)
	$res:=Log:C22($var)
	$res:=Square root:C539($var)
	$res:=$var*$var
	$res:=$var+$var
	$res:=$var*$var*$var
	
End for 
