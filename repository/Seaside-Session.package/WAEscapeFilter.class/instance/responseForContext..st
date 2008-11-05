processing
responseForContext: aRequestContext
	^ [ super responseForContext: aRequestContext ]
		on: WAReturnResponse 
		do: [ :err | err response ]