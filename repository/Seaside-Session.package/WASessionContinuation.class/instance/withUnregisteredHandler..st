private
withUnregisteredHandler: aBlock
	^ aBlock
		on: WAUnregisteredHandlerError
		do: [ self requestContext redirectTo: self application baseUrl ]