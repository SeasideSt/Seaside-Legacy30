*scriptaculous-core
lightbox: aComponent
	^ AnswerContinuation currentDo: [ :cc |
		self
			show: aComponent
			onAnswer: cc
			delegation: (SULightbox new
				delegate: aComponent;
				yourself).
		WARenderNotification raiseSignal ]