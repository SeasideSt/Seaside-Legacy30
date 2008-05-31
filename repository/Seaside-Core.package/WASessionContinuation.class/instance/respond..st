processing
respond: aBlock
	| response |
	states := self newStates.
	response := self newResponse.
	self session onRespond: [ :value | self updateStates: states ].
	aBlock value: response.
	self session returnResponse: response