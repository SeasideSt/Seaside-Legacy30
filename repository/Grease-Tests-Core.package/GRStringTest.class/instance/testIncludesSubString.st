testing
testIncludesSubString
	self assert: ('britney.sex.tape.mkv' beginsWith: 'britney').
	self deny: ('britney.sex.tape.mkv' beginsWith: 'sex')