deprecated
after: anObject 
	"Call anObject directly after the receiver is evaluated."
	
	self
		seasideDeprecatedApi: 'JSObject>>#after:'
		details: 'Use script concatentation using the #, operator instead.'.
	self addDecoration: (JSAfter on: anObject)