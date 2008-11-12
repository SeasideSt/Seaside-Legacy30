processing
responseForContext: aRequestContext
	"Setup a return response escape handler. This simply unwinds the execution stack and returns the response to the initiator of this request."

	^ [ super responseForContext: aRequestContext ]
		on: WAReturnResponse
		do: [ :err | err response ]