attributes
groupedAttributes
	| grops attributes |
	grops := Dictionary new.
	attributes := SortedCollection sortBlock: [ :a :b | a key <= b key].
	self allAttributes do: [ :each |
		(grops at: each group ifAbsentPut: [ SortedCollection sortBlock: [:a :b | a key <= b key ] ] )
			add: each ].
	grops associationsDo: [ :associaction |
		attributes add: associaction ].
	^ attributes