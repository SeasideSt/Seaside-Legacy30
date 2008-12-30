deprecated
valueAt: aSymbol put: anObject
	self
		seasideDeprecatedApi: 'WAUserConfiguration>>#valueAt:put:'
		details: 'Use #at:put:.'.
	^ self at: aSymbol put: anObject