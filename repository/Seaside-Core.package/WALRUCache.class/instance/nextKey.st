callbacks
nextKey
	| key |
	[ table includesKey: (key := WAExternalID new displayString) ] whileTrue.
	^ key