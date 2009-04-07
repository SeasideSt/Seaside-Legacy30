decorations
call: aString withArguments: anArray
	"Call the method aString with anArray as arguments."

	self addDecoration: (JSCall new 
		name: aString;
		arguments: anArray;
		yourself)