private
writeResponseForRequest: aRequest on: aStream 
	| response context |
	context := self contextForRequest: (self convertRequest: aRequest).
	context responseStream: aStream.
	response := self dispatchContext: context.
	response ifNil: [ ^ self ].
	response class = WAResponse ifTrue: 
		[ aStream resetBuffers.
		response contentType isBinary ifTrue: [ aStream binary ] ].
	response writeOn: aStream.
	response release