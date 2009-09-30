testing-enumerating
testAssociationsDo
	dictionary associationsDo: [ :key :valye |
		self assert: false ].
	dictionary at: '1' put: 'foo'; at: '2' put: 'bar'.
	dictionary associationsDo: [ :assoc |
		self assert: ((assoc key = '1' and: [ assoc value = 'foo'])
			or: [ assoc key = '2' and: [ assoc value = 'bar' ] ]) ]