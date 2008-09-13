registration
registerAsApplication: aString
	self deprecatedApi: 'Use WAEnvironment>>register:at:'.
	^ WAEnvironment register: self at: aString