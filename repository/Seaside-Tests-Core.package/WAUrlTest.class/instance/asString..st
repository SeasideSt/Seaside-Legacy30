as yet unclassified
asString: aCollectionOfIntegers
	^String streamContents: [ :stream |
		aCollectionOfIntegers do: [ :each |
			stream nextPut: (Character value: each) ] ]