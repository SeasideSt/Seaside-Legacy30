writing-xhtml
closeTag: aString
	indentLevel := indentLevel - 1.
	indentCloseTags removeLast
		ifTrue: [ self indent ].
	html text: '</'.
	html span class: (self cssClassFor: aString); with: aString.
	html text: '>'