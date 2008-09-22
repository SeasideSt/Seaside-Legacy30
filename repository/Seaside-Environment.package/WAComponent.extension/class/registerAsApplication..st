*Seaside-Environment
registerAsApplication: aString 
	self deprecatedApi: 'Use WAEnvironment>>register:at:'.
	^ WAAdmin 	register: self at: aString