*Seaside-RenderLoop
inNewRenderLoopCall: aComponent
	^ WAContinuation currentDo: [ :cc | 
		aComponent onAnswer: cc.
		self inNewRenderLoopShow: aComponent ] 