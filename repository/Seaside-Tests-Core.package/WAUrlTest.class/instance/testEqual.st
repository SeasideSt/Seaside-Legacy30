testing-comparing
testEqual
	url hostname: 'seaside.st'; addParameter: 'foo' value: 'bar'. 
	self assert: url = url.
	self deny: url = WAUrl new.
	self deny: url = url printString.
	self deny: url = (url withoutParameters).
	self deny: url = (url withParameter: 'zork').
	self deny: url = (url withParameter: 'zork' value: 'zonk')