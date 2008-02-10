processing
handleRequest: aRequest
	^ [ self processRequest: aRequest ]
		on: Error 
		do: [ :err | WAResponse notFound: aRequest url ]