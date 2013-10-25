as yet unclassified
plainTextBodyString
	| plainText |
	plainText := self parts detect: [ :each | each isPlainText ] ifNone: [ ^ '' ].
	^ plainText string