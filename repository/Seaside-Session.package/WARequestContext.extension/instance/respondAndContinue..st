*Seaside-Session
respondAndContinue: aBlock 
	| r |
	^ WAContinuation currentDo: [ :cc |
		r := aBlock value: (self session actionUrlForContinuation: cc).
	
		self respond: r ]