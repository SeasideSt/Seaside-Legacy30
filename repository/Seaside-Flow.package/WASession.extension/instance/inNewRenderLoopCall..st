*seaside-flow
inNewRenderLoopCall: aComponent
	^ WAPlatform current suspendCallbackDo: [ :cc | 
		aComponent onAnswer: cc.
		self inNewRenderLoopShow: aComponent ] 