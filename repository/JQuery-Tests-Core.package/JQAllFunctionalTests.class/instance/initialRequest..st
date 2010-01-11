initialization
initialRequest: aRequest
	super initialRequest: aRequest.
	tests do: [ :category |
		category value do: [ :entry |
			(self pathFor: entry value title) = aRequest url path last
				ifTrue: [ contents := entry value ] ] ]