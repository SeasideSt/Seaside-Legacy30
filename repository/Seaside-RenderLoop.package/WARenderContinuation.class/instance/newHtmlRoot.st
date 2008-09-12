creational
newHtmlRoot
	| htmlRoot |
	htmlRoot := WAHtmlRoot context: renderContext.
	htmlRoot bodyAttributes at: 'onload' append: 'onLoad()' separator: ';'.
	self updateRoot: htmlRoot.
	^ htmlRoot