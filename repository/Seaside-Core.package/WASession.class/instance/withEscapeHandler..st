request handling
withEscapeHandler: aBlock
	escapeContinuation := [ :response |
		WAReturnResponse new 
			response: response;
			signal ].
	^ aBlock
		on: WAReturnResponse 
		do: [ :err | err response ]