rendering
render: anObject
	"Render anObject and return the contents of the resulting Document as a String.
	anObject must understand #renderOn:. Commonly anObject will be a one-argument
	block, which will be evaluated with the appropriate renderer."
	
	^ String streamContents: [ :stream |
		| context document renderer |
		document := self documentClass on: stream codec: self codec.
		context := WARenderContext new.
		context document: document.
		context actionUrl: self actionUrl.
		renderer := self rendererClass context: context.
		
		self openDocument: document context: context.
		renderer render: anObject; flush.
		self closeDocument: document ]