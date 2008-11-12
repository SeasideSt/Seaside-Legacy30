private
dispatchRequest: aRequest
	"Take a Seaside Request object, pass it to our request handler for processing,
	and return a Seaside Response object."
	^ self dispatchContext: (self contextForRequest: aRequest)