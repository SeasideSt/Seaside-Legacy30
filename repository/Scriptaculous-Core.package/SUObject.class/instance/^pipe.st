decorations
| anObject
	"Combine the receiver and anObject with a logical OR."

	^ self addDecoration: (SUBinary new operator: '||'; statement: anObject)