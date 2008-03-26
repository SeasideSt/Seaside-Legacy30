initialization
initializeFromString: aString
	| string index input output |
	self initialize.
	string := aString.
	index := string lastIndexOf: $#.
	index > 0 ifTrue: [
		fragment := self decode: (string copyFrom: index + 1 to: string size).
		string := string copyFrom: 1 to: index - 1 ].
	index := string lastIndexOf: $?.
	index > 0 ifTrue: [
		self parseQuery: (string copyFrom: index + 1 to: string size).
		string := string copyFrom: 1 to: index - 1 ].
	input := string readStream.
	output := WriteStream on: String new.
	[ input atEnd not and: [ input peek isAlphaNumeric ] ]
		whileTrue: [ output nextPut: input next ].
	(input next: 3) = '://'
		ifFalse: [ input reset ]
		ifTrue: [
			output isEmpty
				ifFalse: [ scheme := output contents ] ].
	[ input atEnd not and: [ input peek = $: or: [ input peek = $/ ] ] ]
		whileTrue: [ input next ].
	self parseHost: (input upTo: $/).
	self parsePath: input upToEnd