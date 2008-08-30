testing-other
testAsUnicode
	"check if your dialect implements Character >> #asUnicode which returns the Unicode codepoint"
	self assert: $@ asUnicode = 64