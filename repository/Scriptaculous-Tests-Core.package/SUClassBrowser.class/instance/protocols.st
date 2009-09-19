accessing
protocols
	^ [ class organization categories asSortedCollection ]
		on: Error
		do: [ :err | #('--all--') ]