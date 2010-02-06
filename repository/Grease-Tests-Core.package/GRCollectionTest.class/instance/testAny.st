tests
testAny
	| array set bag dictionary ordered string |
	array := #(1 2 3).
	set := Set with: 1 with: 2.
	bag := Bag with: 1 with: 2.
	dictionary := Dictionary new at: #a put: 1; at: #b put: 2; yourself.
	ordered := OrderedCollection with: 1 with: 2.
	string := 'abcdef'.
	
	self assert: (array includes: array any).
	self assert: (set includes: set any).
	self assert: (bag includes: bag any).
	self assert: (dictionary values includes: dictionary any).
	self assert: (ordered includes: ordered any).
	self assert: (string includes: string any).