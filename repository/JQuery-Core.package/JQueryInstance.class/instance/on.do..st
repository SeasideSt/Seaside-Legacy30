events
on: aString do: anObject 
	"Binds a handler to one or more events (like click) for each matched element. Can also bind custom events."
	
	self call: 'bind' with: aString with: anObject asFunction