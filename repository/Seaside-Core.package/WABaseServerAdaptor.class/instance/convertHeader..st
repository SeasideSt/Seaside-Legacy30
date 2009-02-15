private-converting
convertHeader: aNativeRequest
	"converts the HTTP header of the given native request in a dictionary that mapps lowercase strings to string values
	known issues:
	- multi valued headers are not handeled right now"
	self subclassResponsibility