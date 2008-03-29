scripts
addLoadScript: aString
	self deprecatedApi: 'Use WAContext >> #addLoadScript'.
	^self context addLoadScript: aString