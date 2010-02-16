monticello-accessing
loadedVersionNames
	"Answer all the loaded version names of Seaside."
	"WADevelopment loadedVersionNames"
	
	^ (self workingCopies select: [ :each | each  ancestors notEmpty ]) 
		collect: [ :each | each ancestors first name ]