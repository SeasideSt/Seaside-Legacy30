encoding
encode: aString
	"decodes aString in the native encoding of this dialect to the encoding of the receiver"
	self subclassResponsibility