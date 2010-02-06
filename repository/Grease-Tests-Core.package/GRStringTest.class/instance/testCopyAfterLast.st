testing
testCopyAfterLast
	self assert: ('britney.sex.tape.mkv' copyAfterLast: $.) = 'mkv'.
	self assert: ('britney.sex.tape.mkv' copyAfterLast: $$) = ''