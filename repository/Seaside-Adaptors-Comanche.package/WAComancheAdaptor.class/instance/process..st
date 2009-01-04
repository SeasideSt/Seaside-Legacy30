actions
process: komRequest
	| request response komResponse  |
	request := self convertRequest: komRequest.
	response := self dispatchRequest: request.
	komResponse := self convertResponse: response.
	response release.
	^ komResponse