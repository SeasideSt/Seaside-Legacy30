printing
encodeOn: aDocument
	aDocument openTag: self tag attributes: attributes closed: self isClosed.
	self isClosed ifTrue: [ ^ self ].
	self childrenDo: [ :each | each encodeOn: aDocument ].
	aDocument closeTag: self tag