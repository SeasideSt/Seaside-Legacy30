private
dispatch: aRequestContext to: aRegistry
	registrySize := aRegistry cache size.
	[ aRegistry handle: aRequestContext ]
		on: WAResponseNotification
		do: [ :n | ].
		
	^ aRequestContext response