processing
responseForContext: aRequestContext
	| response |
	startTime := Time millisecondClockValue.
	[ response := super responseForContext: aRequestContext ]
		ensure: [ previousTiming := self currentTiming ].
	^ response