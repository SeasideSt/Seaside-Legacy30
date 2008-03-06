rendering
render: anObject
	^ String streamContents: [ :stream |
		| context docRoot document html callbacks |
		document := self documentClass new stream: stream.
		context := WARenderingContext new.
		context document: document.
		context actionUrl: self actionUrl.
		context session: self session.
		callbacks := self createCallbacksFor: context.
		html := self canvasClass context: context callbacks: callbacks.
		WACurrentSession
			use: context session
			during: [ 
				self openDocumentDocument: document context: context.
				html render: anObject; flush.
				self closeDocument: document ] ]