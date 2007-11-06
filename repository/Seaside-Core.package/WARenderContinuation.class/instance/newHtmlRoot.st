creational
newHtmlRoot
	| htmlRoot |
	htmlRoot := WAHtmlRoot context: self context.
	htmlRoot bodyAttributes at: 'onload' append: 'onLoad()' separator: ';'.
	self updateRoot: htmlRoot.
	^ htmlRoot