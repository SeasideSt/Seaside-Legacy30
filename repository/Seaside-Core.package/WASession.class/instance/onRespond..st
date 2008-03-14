responding
onRespond: aBlock
	| previous |
	previous := escapeContinuation.
	escapeContinuation := [ :response |
		aBlock value: response.
		previous value: response ]
