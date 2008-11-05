private
writeResponseForRequest: aRequest on: aStream 
	| request response |
	request := self convertRequest: aRequest.
	request responseStream: aStream.
	response := self requestHandler handleRequest: (WARequestContext
		server: self request: request).
	response ifNil: [ ^ self ].
	response class = WAResponse ifTrue: 
		[ aStream resetBuffers.
		response contentType isBinary ifTrue: [ aStream binary ] ].
	response writeOn: aStream.
	response release