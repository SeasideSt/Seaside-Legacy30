decorations
assignLocalTo: aString
	"Assign the receiver to a local variable aString."

	self addDecoration: (SUAssignLocal new name: aString)