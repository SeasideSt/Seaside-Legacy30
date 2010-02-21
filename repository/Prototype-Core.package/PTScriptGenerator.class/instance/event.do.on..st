public
event: aString do: anObject on: aBrush
	anObject ifNil: [ ^ self ].
	self addScript: (PTElement new
		id: aBrush ensureId;
		on: aString do: anObject)