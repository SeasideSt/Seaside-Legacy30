testing
testCopyUpTo
	self assert: ('britney.sex.tape.mkv' copyUpTo: $.) = 'britney'.
	self assert: ('britney.sex.tape.mkv' copyUpTo: $$) = 'britney.sex.tape.mkv'