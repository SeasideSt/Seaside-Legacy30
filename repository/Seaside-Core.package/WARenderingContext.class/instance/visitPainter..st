visiting
visitPainter: aPainter
	| renderer |
	renderer := aPainter rendererClass context: self.
	(self isDebugMode and: [ aPainter canHaveHalo ])
		ifTrue: [ renderer render: (SeasidePlatformSupport haloClass for: aPainter) ]
		ifFalse: [ aPainter renderContentOn: renderer ].
	renderer flush