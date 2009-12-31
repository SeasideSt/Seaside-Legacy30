public api
radioButton
	"set callback only if not already defined by using the callback: method"
	key isNil ifTrue: [ key := canvas callbacks store: WADispatchCallback new ].
	^ canvas radioButton group: self