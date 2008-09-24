*Seaside-Environment
registerAsApplication: aString 
	self seasideDeprecatedApi: 'WAComponent class>>registerAsApplication:'
		details: 'Use WAAdmin>>register:at:'.
	^ WAAdmin 	register: self at: aString