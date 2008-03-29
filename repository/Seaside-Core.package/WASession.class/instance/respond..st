responding
respond: aBlock 
	^ WAResponseContinuation currentDo: [ :cc | self respond: aBlock onAnswer: cc ]