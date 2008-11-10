events
toggle: aCollection
	"Toggle among two or more function calls every other click."
	
	self call: 'toggle' withArguments: (aCollection collect: [ :each | each asFunction ])