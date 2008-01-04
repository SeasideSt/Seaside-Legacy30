decorations
assignTo: aString
	"Assign the receiver to a global variable aString."

	self addDecoration: (SUAssign new name: aString)