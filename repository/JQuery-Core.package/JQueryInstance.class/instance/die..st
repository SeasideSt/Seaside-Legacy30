events
die: aString
	"This does the opposite of live, it removes a bound live event. Without any arguments, all bound live events are removed."
	
	self call: 'die' with: aString