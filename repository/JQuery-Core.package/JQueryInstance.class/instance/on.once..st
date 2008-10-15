events
on: aString once: anObject 
	"Binds a handler to one or more events to be executed once for each matched element."
	
	self call: 'one' with: aString with: anObject asFunction