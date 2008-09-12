processing
call: aComponent 
	^ WAContinuation currentDo: [ :cc | 
		aComponent onAnswer: cc.
		self root: aComponent.
		self run ]