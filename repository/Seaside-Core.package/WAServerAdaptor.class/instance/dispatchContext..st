private
dispatchContext: aRequestContext
	[ self requestHandler handle: aRequestContext ]
		on: WAResponseNotification
		do: [ :n |  ].
	^ aRequestContext response