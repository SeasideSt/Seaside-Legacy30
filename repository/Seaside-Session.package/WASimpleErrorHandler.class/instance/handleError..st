actions
handleError: anError
	WACurrentRequestContext value
		returnResponse: (WAResponse internalError: anError)