responding
respond: aBlock
	^ ResponseContinuation currentDo: [ :cc | self respond: aBlock onAnswer: cc ]