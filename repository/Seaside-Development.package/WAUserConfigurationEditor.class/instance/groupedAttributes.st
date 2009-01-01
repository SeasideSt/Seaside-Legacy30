attributes
groupedAttributes
	| groups attributes |
	groups := Dictionary new.
	attributes := SortedCollection sortBlock: [ :a :b | a key <= b key].
	self configuration allAttributes valuesDo: [ :each |
		(groups at: each group ifAbsentPut: [ SortedCollection sortBlock: [:a :b | a key <= b key ] ] )
			add: each ].
	groups associationsDo: [ :associaction |
		attributes add: associaction ].
	^ attributes