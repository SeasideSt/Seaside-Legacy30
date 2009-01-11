processing
handleFiltered: aRequestContext
	"Setup a return response escape handler. This simply unwinds the execution stack and returns the response to the initiator of this request."

	^ [ super handleFiltered: aRequestContext ]
		on: WAReturnResponse
		do: [ :err | err response ]