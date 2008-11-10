events
hover: anInObject out: anOutObject
	"Binds a handler to one or more events (like click) for each matched element. Can also bind custom events."
	
	self call: 'hover' with: anInObject asFunction with: anOutObject asFunction