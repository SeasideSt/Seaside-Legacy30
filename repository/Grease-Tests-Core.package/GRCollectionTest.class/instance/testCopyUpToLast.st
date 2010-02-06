tests
testCopyUpToLast
	|  collection sub |
	self isSequencedReadable ifFalse: [ ^ self ].
	
	"match first element"
	collection := self arbitraryCollection.
	sub := collection copyUpToLast: collection first.
	self assert: (sub isKindOf: self collectionSpecies).
	self assert: sub isEmpty.
	
	"no match"
	sub := collection copyUpToLast: self excludedElement.
	self assert: (sub isKindOf: self collectionSpecies).
	self assert: sub size = collection size.
	self assert: sub = collection.
	
	"match an element"
	sub := collection copyUpToLast: self includedElement.
	self assert: (sub isKindOf: self collectionSpecies).
	self assert: sub = (collection copyFrom: 1 to: sub size).
	self assert: (collection at: sub size + 1) = self includedElement.

	self allowsDuplicateValues ifTrue: [
		sub := collection copyUpToLast: self duplicateElement.
		self assert: (sub isKindOf: self collectionSpecies).
		self assert: sub = (collection copyFrom: 1 to: sub size).
		self assert: (collection at: sub size + 1) = self duplicateElement.
		self assert: (sub includes: self duplicateElement) ].
	
	"Make sure we're using equality"
	collection := self collectionClass withAll: #(1 '1').
	sub := collection copyUpToLast: '1'.
	self assert: sub size = 1.
	self assert: sub first = 1.