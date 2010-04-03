creation
event: aString
	"Create a new jQuery.Event object without the new operator."

	^ (JQEvent context: self renderContext) alias: (self call: 'Event' with: aString) greaseString