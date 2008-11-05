private
dispatchRequest: aRequest
	"Take a Seaside Request object, pass it to our request handler for processing,
	and return a Seaside Response object."
	| context |
	context := (WARequestContext request: aRequest)
					codec: self codec;
					yourself.
	^ self requestHandler handleRequest: context