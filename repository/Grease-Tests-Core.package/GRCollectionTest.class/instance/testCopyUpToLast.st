tests
testCopyUpToLast
	| array interval strings |
	array := #(1 2 3 4 1 2).
	self assert: (array copyUpToLast: 1) = #(1 2 3 4).
	self assert: (array copyUpToLast: 3) = #(1 2).
	self assert: (array copyUpToLast: 5) = array.
	
	interval := 1 to: 4.
	self assert: (interval copyUpToLast: 1) = #().
	self assert: (interval copyUpToLast: 3) = #(1 2).
	self assert: (interval copyUpToLast: 5) = #(1 2 3 4).
	
	"Make sure we're using equality"
	strings := #(1 '1' '1').
	self assert: (strings copyUpToLast: '1') = #(1 '1').