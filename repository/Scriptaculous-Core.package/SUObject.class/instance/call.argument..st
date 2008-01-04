decorations
call: aString argument: anObject
	"Call the method aString with anObject as its argument."

	self call: aString arguments: (Array with: anObject)