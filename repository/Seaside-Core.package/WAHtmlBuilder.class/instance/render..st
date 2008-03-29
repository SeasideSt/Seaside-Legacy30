rendering
render: anObject
	"renders anObject and returns the resulting HTML document as a String
	anObject must understand #renderOn:
	often anObject will be a render block. That is a one argument block who will be
	evaluated with a html canvas."
	^ String streamContents: [ :stream |
		| context docRoot document html callbacks |
		document := self documentClass new stream: stream.
		context := WARenderingContext new.
		context document: document.
		context actionUrl: self actionUrl.
		callbacks := self createCallbacksFor: context.
		html := self canvasClass context: context callbacks: callbacks.
		
		self openDocumentDocument: document context: context.
		html render: anObject; flush.
		self closeDocument: document ]