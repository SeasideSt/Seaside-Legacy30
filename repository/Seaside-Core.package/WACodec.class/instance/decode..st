decoding
decode: aString
	"decodes aString in the encoding of the receiver to the native encoding of this dialect"
	self subclassResponsibility