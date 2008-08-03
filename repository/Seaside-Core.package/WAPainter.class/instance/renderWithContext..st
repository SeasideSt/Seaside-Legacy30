rendering
renderWithContext: aRenderingContext
	| html callbacks |
	callbacks := aRenderingContext callbacksFor: self callbackOwner.
	html := self rendererClass context: aRenderingContext callbacks: callbacks.
	(self showHalo and: [ aRenderingContext isDebugMode ])
		ifTrue: [ (WAHalo for: self) renderContentOn: html ]
		ifFalse: [ self renderContentOn: html ].
	html flush