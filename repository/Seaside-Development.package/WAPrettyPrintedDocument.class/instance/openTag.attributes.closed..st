writing-xhtml
openTag: aString attributes: anAttributes closed: aBoolean
	self indent.
	html text: '<'.
	html span
		class: 'wa-tag';
		with: aString.
	self attributes: anAttributes.
	aBoolean
		ifTrue: [ html text: '/' ].
	html text: '>'.
	aBoolean
		ifFalse: [ indentLevel := indentLevel + 1 ].
	indentCloseTags removeLast; addLast: true; addLast: aBoolean