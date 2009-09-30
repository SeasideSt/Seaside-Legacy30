*seaside-flow
respondAndContinue: aBlock 
	^ GRPlatform current suspendFlowDo: 
		[ :cc | 
		aBlock value: (self session actionUrlForContinuation: cc).
		self respond ]