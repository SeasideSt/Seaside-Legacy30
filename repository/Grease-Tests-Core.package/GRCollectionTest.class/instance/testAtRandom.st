testing
testAtRandom
	| collection random |
	collection := (1 to: 1000).
	random := collection atRandom.
	self assert: (collection includes: random).
	"Not technically an error, but likely a sign of a problem:"
	self deny: ((random = collection atRandom)
					and: [ random = collection atRandom ]).
	
	collection := (1 to: 1000) asArray.
	random := collection atRandom.
	self assert: (collection includes: random).
	"Not technically an error, but likely a sign of a problem:"
	self deny: ((random = collection atRandom)
					and: [ random = collection atRandom ]).
	
	collection := (1 to: 1000) asSet.
	random := collection atRandom.
	self assert: (collection includes: random).
	"Not technically an error, but likely a sign of a problem:"
	self deny: ((random = collection atRandom)
					and: [ random = collection atRandom ]).