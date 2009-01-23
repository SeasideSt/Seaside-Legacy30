private
performRendering: anObject
	| innerContext docRoot document response renderer |
	innerContext := canvas context copy.
	docRoot := WAHtmlRoot context: innerContext.
	docRoot base target: '_top'.
	response := WAResponse new.
	response doNotCache.
	document := self requestContext entryPoint documentClass on: response stream codec: self requestContext codec.
	canvas context document: document.
	document open: docRoot.
	renderer := canvas species context: canvas context.
	renderer render: anObject;
		 flush.
	document close.
	self requestContext respond: response