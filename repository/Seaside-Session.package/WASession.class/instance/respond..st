responding
respond: aBlock 
	^ WAContinuation currentDo: [ :cc | self respond: aBlock onAnswer: cc ]