private-parsing
parseObject
	"answers a Dictionary"
	| object |
	self current ~= ${
		ifTrue: [ self syntaxError: 'expected {' ].
	object := Dictionary new.
	self nextNonWhiteSpace."consume {"
	self parseMembersDo: [ :each |
		object add: each ].
	self current ~= $}
		ifTrue: [ self syntaxError: 'expected }' ].
	self nextNonWhiteSpace. "consume }"
	^object