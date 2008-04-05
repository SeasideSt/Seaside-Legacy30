*scriptaculous-core
script: aPrototype
	aPrototype isNil
		ifTrue: [ ^ self ].
	(aPrototype respondsTo: #id:)
		ifTrue: [ aPrototype id: self ensureId ].
	aPrototype context addLoadScript: aPrototype