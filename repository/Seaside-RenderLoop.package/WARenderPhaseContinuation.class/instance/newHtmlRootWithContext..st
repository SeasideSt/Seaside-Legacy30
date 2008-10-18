private
newHtmlRootWithContext: aRenderContext
	| htmlRoot |
	htmlRoot := WAHtmlRoot context: aRenderContext.
	htmlRoot bodyAttributes at: 'onload' append: 'onLoad()' separator: ';'.
	self updateRoot: htmlRoot.
	^ htmlRoot