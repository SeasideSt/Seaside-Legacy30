tests
testGreaseIntegerOnCharacterAscii
	"ASCII (1 byte)"
	| oWithStroke euro manna |
	self assert: $a greaseInteger = 97.
	self assert: $A greaseInteger = 65