rendering
renderWithContext: aRenderingContext
	| html callbacks |
	callbacks := aRenderingContext callbacksFor: self.
	html := self rendererClass context: aRenderingContext callbacks: callbacks.
	(aRenderingContext isDebugMode and: [ self canHaveHalo ])
		ifTrue: [ (SeasidePlatformSupport haloClass for: self) renderContentOn: html ]
		ifFalse: [ self renderContentOn: html ].
	html flush