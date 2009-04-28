testing
testScriptOn
	self 
		assert: [ :html | html html: (html jQuery script: [ :s | ]) ]
		renders: ''.
	self 
		assert: [ :html | html html: (html jQuery script: [ :s | s add: self mock ]) ]
		renders: 'mock'.
	self 
		assert: [ :html | html html: (html jQuery script: [ :s | s add: self mock; add: self mock ]) ]
		renders: 'mock;mock'