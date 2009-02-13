*seaside-flow
respondAndContinue: aBlock 
	^ WAPlatform current suspendFlowDo: [ :cc |
		aBlock value: (self session actionUrlForContinuation: cc).
		self respond ]