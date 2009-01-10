private
newKey
	| key |
	[ objectsByKey includesKey: (key := WAKeyGenerator current keyOfLength: self keySize) ] whileTrue.
	^ key