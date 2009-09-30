testing
testAtRandomOnEmpties
	| collection |
	collection := (5 to: 4).
	self should: [ collection atRandom ] raise: Error.
	
	collection := Array new.
	self should: [ collection atRandom ] raise: Error.
	
	collection := Set new.
	self should: [ collection atRandom ] raise: Error.