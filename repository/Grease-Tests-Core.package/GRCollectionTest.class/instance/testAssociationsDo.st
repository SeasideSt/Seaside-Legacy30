tests
testAssociationsDo
	| actual |
	actual := Array with: 1->1 with: 2->2 with: 3->3.
	actual associationsDo: [:assoc | self assert: (assoc key = assoc value)].
	
	actual := actual asOrderedCollection.
	actual associationsDo: [:assoc | self assert: (assoc key = assoc value)].