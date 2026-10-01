Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		ARRAY TEXT:C222(_TabTitles; 0)
		C_COLLECTION:C1488(Infos; ShoppingCart)
		C_OBJECT:C1216(VirtualStructure; GetSystemInfo; GetLicenceInfo)
		C_TEXT:C284(FilePathDB)
		C_TEXT:C284(Sys_label; Param_label; OS_Label; LicenceLabel)
		
		Infos:=ds:C1482.INFO.all().orderBy("PageNumber").toCollection()
		COLLECTION TO ARRAY:C1562(Infos.query("PageNumber<4"); _TabTitles; "TabTitle")
		
		ALL RECORDS:C47([Recipes:6])
		
		// Init the path of the 4D View Pro documents
		FilePathDB:=Get 4D folder:C485(Current resources folder:K5:16)+"HDI 4D View Pro DB.4vp"
		FilePathMethod:=Get 4D folder:C485(Current resources folder:K5:16)+"HDI 4D View Pro Method.4vp"
		
		// init of the methods allowed in 4D View pro
		InitAllowedMethods
		
		// init of the fields allowed in 4D View pro
		InitVirtualStructure
		
		
		// Creation of the variables for the titles lables
		SysLabel:="System"
		ParamLabel:="Parameters"
		OSLabel:="OS informations"
		LicenceLabel:="4D Licences"
		
		// for performance reason, the get system info and
		// get licence info objects are loaded in this variables
		GetSystemInfo:=System info:C1571
		GetLicenceInfo:=License info:C1489
		
		OBJECT SET ENABLED:C1123(*; "Next_Button"; False:C215)
		OBJECT SET ENABLED:C1123(*; "Update_Button"; False:C215)
		
End case 

