preferences
preferenceAt: aSymbol put: anObject
	self configuration valueAt: aSymbol put: anObject.
	self announceChangeOf: #preference with: aSymbol->anObject.
	^anObject