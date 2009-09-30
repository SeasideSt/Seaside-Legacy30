testing-enumerating
testKeysAndValuesDo
	dictionary keysAndValuesDo: [ :key :valye |
		self assert: false ].
	dictionary at: '1' put: 'foo'; at: '2' put: 'bar'.
	dictionary keysAndValuesDo: [ :key :value |
		self assert: ((key = '1' and: [ value = 'foo'])
			or: [ key = '2' and: [ value = 'bar' ] ]) ]