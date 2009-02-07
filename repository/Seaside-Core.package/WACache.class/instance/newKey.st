private
newKey
	| key |
	self mutex critical: [
		[ objectsByKey includesKey: (key := WAKeyGenerator current keyOfLength: self keySize) ] whileTrue ].
	^ key