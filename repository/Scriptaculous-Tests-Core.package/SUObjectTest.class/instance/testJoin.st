testing-convertion
testJoin
	self assert: (SUJoin join: #( 'a' 'b' ) with: '&') equals: '["a","b"].join("&")'