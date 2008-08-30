callbacks
nextKey
	| key |
	[ table includesKey: (key := WAExternalID new seasideString) ] whileTrue.
	^ key