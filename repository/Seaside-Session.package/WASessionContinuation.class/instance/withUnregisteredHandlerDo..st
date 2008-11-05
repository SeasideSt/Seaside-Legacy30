private
withUnregisteredHandlerDo: aBlock
	^ aBlock
		on: WAUnregisteredHandlerError
		do: [ self requestContext redirectTo: self application baseUrl ]