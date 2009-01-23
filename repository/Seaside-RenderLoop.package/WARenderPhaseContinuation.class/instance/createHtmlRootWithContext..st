private
createHtmlRootWithContext: aRenderContext
	| htmlRoot |
	htmlRoot := WAHtmlRoot context: aRenderContext.
	self updateRoot: htmlRoot.
	^ htmlRoot