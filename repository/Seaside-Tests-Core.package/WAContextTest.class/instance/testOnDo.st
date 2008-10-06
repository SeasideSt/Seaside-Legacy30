testing
testOnDo
	| events event |
	events := OrderedCollection new.
	context on: WAEvent do: [ :e | events add: e ].
	context on: WAResponseEvent do: [ :e | events add: e ].
	event := WAResponseEvent new.
	context trigger: event.
	self assert: events size = 2.
	self assert: events first = event.
	self assert: events last = event