tests
testIncludesSubString
	self assert: ('britney.sex.tape.mkv' beginsWithSubCollection: 'britney').
	self deny: ('britney.sex.tape.mkv' beginsWithSubCollection: 'sex')