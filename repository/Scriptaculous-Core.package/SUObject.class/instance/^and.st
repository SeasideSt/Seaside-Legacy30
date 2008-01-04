decorations
& anObject
	"Combine the receiver and anObject with a logical AND."

	^ self addDecoration: (SUBinary new operator: '&&'; statement: anObject)