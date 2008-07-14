private
performRendering: anObject
	| innerContext docRoot document response renderer requestContext |
	innerContext := canvas context copy.
	docRoot := WAHtmlRoot context: innerContext.
	docRoot base target: '_top'.
	requestContext := WACurrentRequestContext value.
	document := requestContext session outputDocumentClass new.
	response := WAResponse new.
	response doNotCache.
	document stream: response stream.
	canvas context document: document.
	docRoot open: document.
	renderer := canvas species context: canvas context callbacks: canvas callbacks.
	renderer render: anObject;
		 flush.
	docRoot close: document.
	requestContext returnResponse: response