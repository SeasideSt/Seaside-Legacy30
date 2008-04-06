request handling
withEscapeHandler: aBlock
	escapeContinuation := [ :response |
		WAReturnResponse new 
			response: response;
			raiseSignal ].
	^ aBlock
		on: WAReturnResponse 
		do: [ :err | err response ]