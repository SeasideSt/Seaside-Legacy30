*seaside-flow
inNewRenderLoopCall: aComponent
	^ WAPlatform current suspendFlowDo: [ :cc | 
		aComponent onAnswer: cc.
		self inNewRenderLoopShow: aComponent ] 