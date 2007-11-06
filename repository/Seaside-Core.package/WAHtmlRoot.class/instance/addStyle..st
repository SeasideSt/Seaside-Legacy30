adding
addStyle: aString
	"Include the style-sheet aString into the receiver."

	styles ifNil: [ styles := OrderedCollection new ].
	(styles includes: aString) ifFalse: [ styles add: aString ]