testing
testGreaseString
	self assert: 'Timberwolf' greaseString = 'Timberwolf'.
	self assert: #DireWolf greaseString = 'DireWolf'.
	self assert: true greaseString = 'true'.
	self assert: 666 greaseString = '666'.
	self assert: $A greaseString = 'A'.
	self assert: nil greaseString = 'nil'.
	[ 1 / 0 ] 
		on: ZeroDivide
		do: [ :error | self assert: error greaseString isString ].
	self assert: 15.25 greaseString = '15.25'.
	self assert: nil greaseString isString.
	self assert: (4 @ 2) greaseString = '4@2'.
	"#seasideString for a byte array should not do any decoding
	this is in place to catch encoding errors early"
	self assert: #(101 97 ) asByteArray greaseString ~= 'ea'.
	self assert: #(101 97 ) asByteArray greaseString isString.
	self assert: Object new greaseString isString