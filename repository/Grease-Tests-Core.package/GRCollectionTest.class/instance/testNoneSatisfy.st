testing
testNoneSatisfy
	self assert: ( #(1 3 5 7 9) noneSatisfy: [ :each | each even ] ).
	self deny: ( #(1 3 5 7 9 4) noneSatisfy: [ :each | each even ] ).
	self assert: ( #() noneSatisfy: [:each | true ])