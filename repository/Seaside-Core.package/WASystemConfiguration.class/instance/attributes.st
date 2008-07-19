attributes
attributes
	| attributes |
	attributes := WAAttributes orderedForConfiguration: self.
	self addAttributes: attributes.
	^ attributes all