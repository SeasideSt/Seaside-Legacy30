convenience
addMessage: aString
	"adds a decoration that renders a level 3 heading with <aString> around the receiver
	returns this decoration so don't forget #yourself"
	^self addDecoration: (WAMessageDecoration new message: aString)