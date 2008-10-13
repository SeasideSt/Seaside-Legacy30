testing
testComment
	self assert: (self parse: '// bla
"hallo"') = 'hallo'.
	self assert: (self parse: '"hallo"
// bla') = 'hallo'.
	self assert: (self parse: '"hallo" // bla') = 'hallo'.

	self assert: (self parse: '/* bla */ "hallo"') = 'hallo'.
	self assert: (self parse: '"hallo" /* bla */') = 'hallo'.
	self assert: (self parse: '/* bla */ "hallo" /* bla */') = 'hallo'