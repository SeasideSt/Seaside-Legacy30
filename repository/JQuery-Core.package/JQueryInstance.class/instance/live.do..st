events
live: aString do: anObject 
	"Binds a handler to an event (like click) for all current - and future - matched element. Can also bind custom events."
	
	self call: 'live' with: aString with: anObject asFunction