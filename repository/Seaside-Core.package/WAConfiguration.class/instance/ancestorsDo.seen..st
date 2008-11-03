ancestry-private
ancestorsDo: aBlock seen: seenSet 
	self parents do: 
		[ :each | 
		(seenSet includes: each) ifFalse: 
			[ aBlock value: each.
			seenSet add: each.
			each 
				ancestorsDo: aBlock
				seen: seenSet ] ]