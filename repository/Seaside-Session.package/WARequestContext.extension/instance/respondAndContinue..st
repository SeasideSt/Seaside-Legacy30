*seaside-session
respondAndContinue: aBlock 
	^ WAContinuation currentDo: [ :cc |
		aBlock value: (self session actionUrlForContinuation: cc).
		self respond ]