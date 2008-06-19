private
performRendering: anObject
	| innerContext docRoot session document response renderer |
	innerContext := canvas context copy.
	docRoot := WAHtmlRoot context: innerContext.
	docRoot base target: '_top'.
	session := WACurrentSession value.
	document := session outputDocumentClass new.
	response := WAResponse new.
	response doNotCache.
	document stream: response stream.
	canvas context document: document.
	docRoot open: document.
	renderer := canvas species context: canvas context callbacks: canvas callbacks.
	renderer render: anObject;
		 flush.
	docRoot close: document.
	session returnResponse: response