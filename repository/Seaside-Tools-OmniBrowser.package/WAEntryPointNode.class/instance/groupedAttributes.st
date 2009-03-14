accessing
groupedAttributes
	| groups attributes |
	groups := Dictionary new.
	attributes := OrderedCollection new.
	handler configuration allAttributes valuesDo: [ :each |
		(groups
			at: each group
			ifAbsentPut: [ SortedCollection sortBlock: [:a :b | a key <= b key ] ])
				add: each ].
	groups keys asSortedCollection do: [ :key |
		(groups at: key) do: [ :each | attributes add: (WAAttributeNode configuration: handler configuration attribute: each) ] ].
	^ attributes