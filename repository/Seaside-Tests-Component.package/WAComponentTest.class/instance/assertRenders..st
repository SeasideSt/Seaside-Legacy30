private
assertRenders: aString
	| guide |
	guide := self renderingGuide start: root.
	self assert: guide client renderingContext document stream contents = aString