request handling
withEscapeHandler: aBlock
	^ aBlock
		on: WAReturnResponse 
		do: [ :err | err response ]