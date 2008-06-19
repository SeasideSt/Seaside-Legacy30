adding
addScript: aString
	"Include the script aString into the receiver."

	scripts ifNil: [ scripts := OrderedCollection new ].
	(scripts includes: aString) ifFalse: [ scripts add: aString ]