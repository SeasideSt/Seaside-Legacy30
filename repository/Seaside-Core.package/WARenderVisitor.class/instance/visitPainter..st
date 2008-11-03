visiting
visitPainter: aPainter 
	| renderer |
	renderer := aPainter rendererClass context: self renderingContext.
	(self renderingContext isDebugMode and: [ aPainter canHaveHalo ]) 
		ifTrue: [ renderer render: (SeasidePlatformSupport haloClass for: aPainter) ]
		ifFalse: [ aPainter renderContentOn: renderer ].
	renderer flush