processing
call: aComponent 
	^ WAAnswerContinuation currentDo: [ :cc | 
		aComponent onAnswer: cc.
		self root: aComponent.
		self run ]