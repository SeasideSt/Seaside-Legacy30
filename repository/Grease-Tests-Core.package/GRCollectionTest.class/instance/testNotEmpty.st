tests
testNotEmpty
	
	self assert: #(1) notEmpty.
	self deny:  #() notEmpty.
	self assert: '1' notEmpty.
	self deny:  '' notEmpty