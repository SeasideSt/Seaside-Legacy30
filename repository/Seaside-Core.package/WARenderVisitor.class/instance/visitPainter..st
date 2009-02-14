visiting
visitPainter: aPainter 
	| renderer |
	renderer := aPainter rendererClass context: self renderContext.
	(self renderContext isDebugMode and: [ aPainter canHaveHalo ]) 
		ifTrue: [ renderer render: (WAPlatform current haloClass for: aPainter) ]
		ifFalse: [ aPainter renderContentOn: renderer ].
	renderer flush