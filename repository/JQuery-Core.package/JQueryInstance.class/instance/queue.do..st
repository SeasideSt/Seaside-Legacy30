data
queue: aString do: anObject
	"Adds a new function, to be executed, onto the end of the queue of all matched elements."
	
	self call: 'queue' with: aString with: anObject asFunction