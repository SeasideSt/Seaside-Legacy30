convenience
callback: aBlock json: anObject
	"Evaluate aBlock with the deserialized JSON representation of anObject."
	
	self
		callback: [ :value | aBlock value: (JSJsonParser parse: value) ] 
		value: (JSJson new stringify: anObject)