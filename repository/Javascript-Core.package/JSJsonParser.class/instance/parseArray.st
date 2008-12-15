private-parsing
parseArray
	"answers an Array"
	| array |
	self current ~= $[
		ifTrue: [ self syntaxError: 'expected [' ].
	self nextNonWhiteSpace."consume ["
	array := self parseElements.
	self current ~= $]
		ifTrue: [ self syntaxError: 'expected ]' ].
	self nextNonWhiteSpace.
	^array