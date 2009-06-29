private
match: aString
	"Tries to match aString, consume input and answer true if successful."
	
	| position |
	position := stream position.
	aString do: [ :each |
		stream next = each ifFalse: [ 
			stream position: position.
			^ false ] ].
	self whitespace.
	^ true