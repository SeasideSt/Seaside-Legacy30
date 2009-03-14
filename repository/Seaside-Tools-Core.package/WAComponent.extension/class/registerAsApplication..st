*seaside-tools-core
registerAsApplication: aString 
	self
		seasideDeprecatedApi: 'WAComponent class>>#registerAsApplication:'
		details: 'Use WAAdmin class>>#register:asApplicationAt:.'.
	^ WAAdmin register: self asApplicationAt: aString