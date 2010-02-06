tests
testEmptyAny
	| array set bag dictionary ordered string |
	array := #().
	set := Set new.
	bag := Bag new.
	dictionary := Dictionary new.
	ordered := OrderedCollection new.
	string := ''.
	
	self should: [ array includes: array any ] raise: Error.
	self should: [ set includes: set any ] raise: Error.
	self should: [ bag includes: bag any ] raise: Error.
	self should: [ dictionary values includes: dictionary any ] raise: Error.
	self should: [ ordered includes: ordered any ] raise: Error.
	self should: [ string includes: string any ] raise: Error.