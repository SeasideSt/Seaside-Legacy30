convenience
@ aString
	"This method is purely syntactic sugar for being to write an expression like
	
		(html jQuery expression: 'div') addClass: 'highlight'; text: 'Hello'
		
	without brackets like this
	
		html jQuery @ 'div'; addClass: 'highlight'; text: 'Hallo'
		
	
		"
	| sender expression |
	(sender := thisContext sender) top == self
		ifFalse: [ self error: 'This method is supposed to be called from within a cascade.' ].
	expression := self expression: aString.
	sender pop; push: expression.
	^ expression