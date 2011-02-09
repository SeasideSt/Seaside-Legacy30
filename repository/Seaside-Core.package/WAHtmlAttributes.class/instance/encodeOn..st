encoding
encodeOn: anXmlDocument
	"Encode the receivers attribute onto aDocument. Note that this implementation requires those two checks for true and false exactly the way they are here, to reliable encode boolean attributes in an XHTML compliant way."

	self keysAndValuesDo: [ :key :value |
		value == false ifFalse: [
			anXmlDocument nextPut: $ ; nextPutAll: key; nextPutAll: '="'.
			value == true
				ifTrue: [ anXmlDocument nextPutAll: key ]
				ifFalse: [ anXmlDocument print: value ].
			anXmlDocument nextPut: $" ] ]