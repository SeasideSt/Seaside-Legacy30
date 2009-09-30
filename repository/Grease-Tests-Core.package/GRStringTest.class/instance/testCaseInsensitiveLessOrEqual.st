testing
testCaseInsensitiveLessOrEqual

	self assert: ('abcdefg' caseInsensitiveLessOrEqual: 'ABCDEFG').
	self assert: ('aBcDefG' caseInsensitiveLessOrEqual: 'AbCdEfG').
	self assert: ('ab' caseInsensitiveLessOrEqual: 'ZYX').
	self deny: ('ZZ' caseInsensitiveLessOrEqual: 'aa').
	self deny: ('zz' caseInsensitiveLessOrEqual: 'AA').