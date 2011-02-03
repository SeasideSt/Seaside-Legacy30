actions
storeDeployedFile: aFilename at: aSymbol
	deployedFiles isNil ifTrue: [ deployedFiles := IdentityDictionary new ].
	deployedFiles at: aSymbol put: aFilename.