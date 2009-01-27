*seaside-flow
respondAndContinue: aBlock 
	^ WAPlatform current suspendCallbackDo: [ :cc |
		aBlock value: (self session actionUrlForContinuation: cc).
		self respond ]