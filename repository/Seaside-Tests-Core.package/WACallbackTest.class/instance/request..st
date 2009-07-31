utilities
request: aDictionary
	"Processes a request with the fields given in aDictionary."
	
	| request context |
	request := WARequest new setFields: aDictionary; yourself.
	context := WARequestContext request: request response: WAResponse new.
	registry handle: context