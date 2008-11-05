testing
usesSmalltalkEncoding
	"returns true if the Strings provided by the server are guaranteed to be in the native encoding of the Smalltalk image
	returns false if the Characters in Strings provided by the server are only bytes"
	^self server usesSmalltalkEncoding