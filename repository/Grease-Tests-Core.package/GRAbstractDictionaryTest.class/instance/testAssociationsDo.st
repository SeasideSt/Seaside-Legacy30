tests
testAssociationsDo
	|collection associations count|
	collection := self arbitraryCollection.
	associations := self arbitraryAssociations copy.
	count := 0.
	collection associationsDo: [:assoc |
		| size |
		count := count + 1.
		size := associations size.
		associations := associations
			reject: [ :each |
				(self isKey: each key equivalentTo: assoc key)
					and: [ each value = assoc value ] ].
		self assert: size - 1 = associations size ].
	self assert: associations isEmpty.
	self assert: count = self arbitraryAssociations size