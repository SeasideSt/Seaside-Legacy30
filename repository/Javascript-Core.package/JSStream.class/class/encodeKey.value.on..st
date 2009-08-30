encoding
encodeKey: aKey value: aValue on: aStream 
	"Key-value pairs are common structures in JavaScript, try to optimize their serialization."
	
	self encodeKey: aKey on: aStream.
	aStream nextPut: $:; javascript: aValue