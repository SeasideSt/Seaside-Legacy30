testing
testMarkerOnValue
	| kk seen |
	self mark: [ 
		self callcc: [ :cc | kk := cc ]. 
		seen := true ].
	
	seen := false.
	self 
		should: [ kk value ]
		raise: Error.
	self deny: seen.
	
	seen := false.
	self
		shouldnt: [ self mark: [ kk value ] ]
		raise: Error.
	self assert: seen