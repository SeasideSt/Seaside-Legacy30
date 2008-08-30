callbacks
nextKey
	| key |
	[ table includesKey: (key := WAExternalID new toString) ] whileTrue.
	^ key