private
dispatchContext: aRequestContext
	[ self requestHandler handle: aRequestContext ]
		on: WAResponseNotification
		do: [ :err | ^ aRequestContext response ].
	self error: self requestHandler printString , ' did not return a response.'