actions
handleDefault: anException
	| response content |
	response := WAResponse new.
	response internalError.
	content := self rendererClass builder
		fullDocument: true;
		rootBlock: [ :root | root title: (self titleForException: anException) ];
		render: [ :html | self renderContentForException: anException on: html ].
	response nextPutAll: content.
	^ response