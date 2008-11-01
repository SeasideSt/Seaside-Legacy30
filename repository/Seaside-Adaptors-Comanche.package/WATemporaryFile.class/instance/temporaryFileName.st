accessing
temporaryFileName
	"the name of the file in which my contents are stored in the directory #temporaryDirectory
	
	don't confuse this with #fileName which is the name of the file that the client sent"
	^ temporaryFileName ifNil: [ temporaryFileName := (WAExternalID new: 48) seasideString ]