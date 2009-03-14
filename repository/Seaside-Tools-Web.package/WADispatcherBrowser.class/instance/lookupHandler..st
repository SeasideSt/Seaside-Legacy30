actions
lookupHandler: aCollection
	^ aCollection
		inject: self dispatcher
		into: [ :requesthandler :name |
			requesthandler isDispatcher
				ifFalse: [ ^ requesthandler ]
				ifTrue: [
					requesthandler entryPoints 
						at: name
						ifAbsent: [ ^ nil ] ] ]