testing
testOnSendTo
	| events event |
	events := OrderedCollection new.
	context on: WAEvent send: #add: to: events.
	context on: WAResponseEvent send: #add: to: events.
	event := WAResponseEvent new.
	context trigger: event.
	self assert: events size = 2.
	self assert: events first = event.
	self assert: events last = event