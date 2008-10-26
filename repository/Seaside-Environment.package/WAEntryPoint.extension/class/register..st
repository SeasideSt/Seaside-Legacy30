*Seaside-Environment
register: aString
	self seasideDeprecatedApi: 'WAEntryPoint class>>register:'
		details: 'Use WAAdmin class>>register:at:'.
	^ WAAdmin register: self at: aString