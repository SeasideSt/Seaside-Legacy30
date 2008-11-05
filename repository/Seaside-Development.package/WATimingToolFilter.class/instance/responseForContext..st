processing
responseForContext: aRequestContext
	startTime := Time millisecondClockValue.
	^ [ super responseForContext: aRequestContext ]
		ensure: [ previousTiming := self currentTiming ]