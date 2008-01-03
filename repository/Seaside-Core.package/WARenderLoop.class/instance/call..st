processing
call: aComponent
	^ AnswerContinuation currentDo: [ :cc |
		aComponent onAnswer: cc.
		self root: aComponent.
		self run ]