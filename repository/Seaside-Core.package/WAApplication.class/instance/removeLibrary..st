libraries
removeLibrary: aClass
	self libraries remove: aClass.
	self announceChangeOf: #library with: #remove->aClass.
	^aClass