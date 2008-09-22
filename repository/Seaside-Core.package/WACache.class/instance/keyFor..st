public
keyFor: anObject
	| key |
	self mutex critical: [
		key := keysByObject at: anObject ifAbsent: [ nil ] ].

	^ key