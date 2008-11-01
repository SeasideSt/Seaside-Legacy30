actions
process: komRequest
	| request response komResponse  |
	request := self convertRequest: komRequest.
	response := self requestHandler handleRequest: (WARequestContext 
		server: self request: request).
	komResponse := self convertResponse: response.
	response release.
	^ komResponse