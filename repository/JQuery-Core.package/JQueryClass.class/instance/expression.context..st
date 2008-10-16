creation
expression: aString context: anObject
	"This function accepts a string containing a CSS selector which is then used to match a set of elements."
	
	| constructor |
	constructor := anObject isNil
		ifTrue: [ Array with: aString ]
		ifFalse: [ Array with: aString with: anObject ].
	^ JQueryInstance on: canvas constructor: constructor