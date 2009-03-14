*seaside-tools-core
register: aString in: aDispatcher
	self
		seasideDeprecatedApi: 'WAEntryPoint class>>#register:in:'
		details: 'Use WAAdmin class>>#register:at:in:.'.
	^ WAAdmin register: self at: aString in: aDispatcher