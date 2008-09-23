private
newKey
	| key |
	[ objectsByKey includesKey: (key := WAExternalID new: self keySize) ] whileTrue.
	^ key