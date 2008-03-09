rendering
render: anObject
	^String streamContents: [ :stream |
		| context docRoot document html callbacks |
		document := (WAHtmlStreamDocument new) stream: stream.
		context := WARenderingContext new.
		context document: document.
		context actionUrl: self actionUrl.
		context session: WACurrentSession value.
		callbacks := self createCallbacksFor: context.
		html := self canvasClass context: context callbacks: callbacks.
		self openDocumentDocument: document context: context.
		html context document stream: stream.
		html render: anObject.
		html flush.
		self closeDocument: document ]