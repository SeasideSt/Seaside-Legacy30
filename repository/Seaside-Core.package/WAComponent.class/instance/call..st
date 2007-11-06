call/answer
call: aComponent
	"Pass control from the receiver to aComponent. The receiver will be temporarily replaced with aComponent. Code can return from here later on by sending #answer: to aComponent."

	^ AnswerContinuation currentDo: [ :cc |
		self show: aComponent onAnswer: cc.
		WARenderNotification raiseSignal ]