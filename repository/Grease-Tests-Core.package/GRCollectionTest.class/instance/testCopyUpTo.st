tests
testCopyUpTo
	| array interval strings |
	array := #(1 2 3 4 1 2 3).
	self assert: (array copyUpTo: 1) = #().
	self assert: (array copyUpTo: 3) = #(1 2).
	self assert: (array copyUpTo: 5) = array.
	
	interval := 1 to: 4.
	self assert: (interval copyUpTo: 1) = #().
	self assert: (interval copyUpTo: 3) = #(1 2).
	self assert: (interval copyUpTo: 5) = #(1 2 3 4).
	
	"Make sure we're using equality"
	strings := #(1 '1' '1').
	self assert: (strings copyUpTo: '1') = #(1).