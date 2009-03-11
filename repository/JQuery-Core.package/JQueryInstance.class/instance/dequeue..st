data
dequeue: aString
	"Removes a queued function from the front of the queue and executes it."
	
	self call: 'dequeue' with: aString