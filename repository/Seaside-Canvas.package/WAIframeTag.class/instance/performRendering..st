private
performRendering: anObject
	| innerContext docRoot document response renderer |
	innerContext := canvas context copy.
	docRoot := WAHtmlRoot context: innerContext.
	docRoot base target: '_top'.
	response := WAResponse new.
	response doNotCache.
	document := self requestContext entryPoint newDocumentOn: response stream.
	canvas context document: document.
	docRoot open: document.
	renderer := canvas species context: canvas context.
	renderer render: anObject;
		 flush.
	docRoot close: document.
	self requestContext respond: response