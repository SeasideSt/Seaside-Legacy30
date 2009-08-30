encoding
encodeKey: aKey on: aStream
	"Encode the key of a Key-value pair for JSON, try to optimize their serialization."
	
	 self encodeString: aKey seasideString on: aStream