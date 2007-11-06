WAExpiringHandler is an abstract class that times out when the time between requests is longer than the value of "timeout"

Subclasses must implement the following messages:
	incomingRequest:
		subclass handles the request in this method

Instance Variables:
	expired	<Boolean>	True if handler has times out
	lastAccess	<Time>	Time the handler was last accessed
	timeout	<Integer>	Length of time in seconds handler will timeout without a request
