testing
testScript
	self 
		assert: [ :html | html div script: self mock ]
		renders: '<div></div>'