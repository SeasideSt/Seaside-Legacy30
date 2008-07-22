ancestry-private
allAncestorsDo: aBlock seen: seenSet
	self ancestors do: [ :each |
		(seenSet includes: each) ifFalse: [
			aBlock value: each.
			seenSet add: each.
			each allAncestorsDo: aBlock seen: seenSet ] ].
	