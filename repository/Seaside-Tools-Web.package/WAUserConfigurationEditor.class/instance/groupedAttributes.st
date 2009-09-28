attributes
groupedAttributes
	| groupsDict attributes |
	groupsDict := Dictionary new.
	attributes := SortedCollection sortBlock: [ :a :b | a key <= b key].
	self configuration allAttributes valuesDo: [ :each |
			(groupsDict at: each group ifAbsentPut: [ SortedCollection sortBlock: [:a :b | a key <= b key ] ] ) add: each  ].
	groupsDict associationsDo: [ :associaction | attributes add: associaction ].
	^ attributes