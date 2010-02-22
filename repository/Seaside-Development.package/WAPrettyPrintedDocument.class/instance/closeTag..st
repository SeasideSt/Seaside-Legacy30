writing
closeTag: aString
	indentLevel := indentLevel - 1.
	indentCloseTags removeLast
		ifTrue: [ self indent ].
	html text: '</'.
	html span 
		class: 'wa-tag'; 
		with: aString.
	html text: '>'