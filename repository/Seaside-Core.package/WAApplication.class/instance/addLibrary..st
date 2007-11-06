libraries
addLibrary: aClass
	self libraries add: aClass.
	self announceChangeOf: #library with: #add->aClass.
	^aClass