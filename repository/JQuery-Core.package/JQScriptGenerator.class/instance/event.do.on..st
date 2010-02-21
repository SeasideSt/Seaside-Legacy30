public
event: aString do: anObject on: aBrush
	anObject ifNil: [ ^ self ].
	self addScript: (JQueryInstance new
		id: aBrush ensureId;
		bind: aString do: anObject)