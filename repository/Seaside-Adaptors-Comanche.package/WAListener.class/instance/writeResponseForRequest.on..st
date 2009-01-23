private
writeResponseForRequest: aRequest on: aStream 
	| context |
	context := WARequestContext 
		request: (self convertRequest: aRequest)
		response: (WAStreamedResponse on: aStream)
		codec: self codec.
	self dispatchContext: context.
	context response
		flush;
		release