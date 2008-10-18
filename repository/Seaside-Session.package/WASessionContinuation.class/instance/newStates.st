creational
newStates
	| snapshot |
	snapshot := WASnapshot new.
	self requestContext onRespond: [ :value | self updateStates: snapshot ].
	^ snapshot