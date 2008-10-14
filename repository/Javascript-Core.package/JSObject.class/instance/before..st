deprecated
before: anObject 
	"Call anObject directly before the receiver is evaluated."
	
	self
		seasideDeprecatedApi: 'JSObject>>#before:'
		details: 'Use script concatentation using the #, operator instead.'.
	self addDecoration: (JSBefore on: anObject)