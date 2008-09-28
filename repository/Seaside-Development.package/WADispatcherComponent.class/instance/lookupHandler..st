actions
lookupHandler: aCollection
	^ aCollection
		inject: self handler
		into: [ :requesthandler :name |
			requesthandler isDispatcher
				ifFalse: [ ^ requesthandler ]
				ifTrue: [
					requesthandler entryPoints 
						at: name
						ifAbsent: [ ^ nil ] ] ]