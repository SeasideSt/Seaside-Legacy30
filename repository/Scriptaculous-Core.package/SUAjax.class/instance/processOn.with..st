processing
processOn: aStream with: aString
	"If none of our subclasses implemented the parameterized version, try the
	unparameterized version"
	
	self processOn: aStream