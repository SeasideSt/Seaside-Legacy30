processing
call: aComponent withToolFrame: aBoolean
	^ AnswerContinuation currentDo: [ :cc |
		aComponent onAnswer: cc.
		self root: aComponent withToolFrame: aBoolean.
		self run ]