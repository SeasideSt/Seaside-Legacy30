public
at: aStringOrExternalID ifAbsent: aBlock
	| object |
	object := self at: aStringOrExternalID.
	^ object ifNil: [ aBlock value ]