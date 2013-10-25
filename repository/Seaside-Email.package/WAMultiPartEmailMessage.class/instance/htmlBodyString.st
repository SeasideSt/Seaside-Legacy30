as yet unclassified
htmlBodyString
	| htmlPart |
	htmlPart := self parts detect: [ :each | each isHtml ] ifNone: [ ^ nil ].
	^ htmlPart string