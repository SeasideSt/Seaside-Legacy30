testing
testMarkerOnCall
	| seen |
	seen := false.
	self 
		should: [ self callcc: [ :cc | seen := true ] ]
		raise: Error.
	self deny: seen.
	
	seen := false.
	self
		shouldnt: [ self mark: [ self callcc: [ :cc | seen := true ] ] ]
		raise: Error.
	self assert: seen.
	
	seen := false.
	