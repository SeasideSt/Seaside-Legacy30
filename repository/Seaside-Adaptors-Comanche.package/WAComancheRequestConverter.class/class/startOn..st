compatibility
startOn: aNumber
	(default notNil and: [ default manager notNil ])
		ifFalse: [ default := self port: aNumber ]
		ifTrue: [
			default stop.
			default port: aNumber ].

	default start