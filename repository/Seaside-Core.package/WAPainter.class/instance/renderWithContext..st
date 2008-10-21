rendering
renderWithContext: aRenderingContext
	| renderer |
	renderer := self rendererClass context: aRenderingContext.
	(aRenderingContext isDebugMode and: [ self canHaveHalo ])
		ifTrue: [ renderer render: (SeasidePlatformSupport haloClass for: self) ]
		ifFalse: [ self renderContentOn: renderer ].
	renderer flush