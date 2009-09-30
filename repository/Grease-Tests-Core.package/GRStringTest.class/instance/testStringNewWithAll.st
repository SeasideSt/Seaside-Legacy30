testing
testStringNewWithAll
	| string |
	string := String new: 5 withAll: $*.
	self assert: string = '*****'.
	
	string := String new: 0 withAll: $-.
	self assert: string = ''