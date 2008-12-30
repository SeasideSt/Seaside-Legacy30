deprecated
call: aString argument: anObject
	"Call the method aString with anObject as its argument."

	self
		seasideDeprecatedApi: 'JSObject>>#call:argument:'
		details: 'Use #call:with:.'.
	self call: aString with: anObject