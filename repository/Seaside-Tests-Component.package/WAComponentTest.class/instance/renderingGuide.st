accessing
renderingGuide
	| context guide |
	context := self renderingContext.
	guide := WARenderingGuide client: (WARenderVisitor context: context).
	context visitor: guide.
	^ guide