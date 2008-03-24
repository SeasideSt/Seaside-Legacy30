*scriptaculous-components-call/answer
lightbox: aComponent 
	^ WAAnswerContinuation currentDo: [ :cc | 
		self 
			show: aComponent
			onAnswer: cc
			delegation: (SULightbox new
					delegate: aComponent;
					yourself).
		WARenderNotification raiseSignal ]