private
createHtmlRootWithContext: aRenderinContext
	| htmlRoot |
	htmlRoot := WAHtmlRoot context: aRenderinContext.
	self updateRoot: htmlRoot.
	^ htmlRoot