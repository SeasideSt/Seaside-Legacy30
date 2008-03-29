private
processRendering: aResponse
	| document htmlRoot |
	document := self newDocumentOn: aResponse.
	context document: document.
	htmlRoot := self newHtmlRoot.
	document open: htmlRoot.
	self root decorationChainDo: [ :each | each renderWithContext: context ].
	self writeOnLoadOn: document.
	document close: htmlRoot.
	context release