public
event: aString do: anObject on: aBrush
	aBrush attributes at: 'on' , aString append: anObject separator: ';'