utilities
request: aDictionary
	"Processes a request with the fields given in aDictionary."
	
	| request context |
	request := WARequest 
		method: 'GET'
		url: WAUrl new
		headers: WASmallDictionary new
		fields: aDictionary
		cookies: nil
		remoteAddress: nil.
	context := WARequestContext request: request.
	WACurrentRequestContext
		use: context
		during: [ registry handle: context ]