testing-literals
testString
	| actual expected |
	self assert: (self parse: '""') = ''.
	self assert: (self parse: '"foo"') = 'foo'.
	self assert: (self parse: '"fo\"o"') = 'fo"o'.
	actual := self parse: '"\"\\\/\b\f\n\r\t\u20AC"'.
	expected := String streamContents: [ :stream |
		stream
			nextPut: $";
			nextPut: $\;
			nextPut: $/;
			nextPut: (Character backspace);
			nextPut: (Character newPage);
			nextPut: (Character lf);
			nextPut: (Character cr);
			nextPut: (Character tab);
			nextPut: (Character value: 16r20AC) ].
	self assert: expected = actual