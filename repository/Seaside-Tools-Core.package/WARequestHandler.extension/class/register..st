*seaside-tools-core
register: aString 
	self 
		greaseDeprecatedApi: 'WAEntryPoint class>>#register:'
		details: 'Use WAAdmin class>>#register:at:.'.
	^ WAAdmin 
		register: self
		at: aString