convenience
@ anObject
	"This method provides syntactic sugar for being able to write an expression like

		(html jQuery with: 'div')
			show;
			addClass: 'highlight'

	without brackets as

		html jQuery @ 'div';
			show;
			addClass: 'highlight'

	Note, the semicolon after the #@ message that starts a cascade. Also note, that at this point the receiver of the cascade changes. This is something one would not expect normally. We do not suggest to use this code, unless you really understand what and why you are doing this."

	| sender expression |
	sender := thisContext sender.
	(sender stackPtr = 0 or: [ sender top ~~ self ])
		ifTrue: [ self error: 'This method is supposed to be called from within a cascade.' ].
	expression := self with: anObject.
	sender pop; push: expression.
	^ expression