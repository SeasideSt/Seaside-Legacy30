rendering
renderWithContext: aRenderingContext
	| html |
	html := self rendererClass context: aRenderingContext.
	(aRenderingContext isDebugMode and: [ self canHaveHalo ])
		ifTrue: [ (SeasidePlatformSupport haloClass for: self) renderContentOn: html ]
		ifFalse: [ self renderContentOn: html ].
	html flush