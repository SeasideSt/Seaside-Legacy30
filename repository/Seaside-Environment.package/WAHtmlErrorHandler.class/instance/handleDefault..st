actions
handleDefault: anException
	| response content |
	response := WAResponse new.
	response internalError.
	content := WARenderCanvas builder
		fullDocument: true;
		rootBlock: [ :root | root title: (self titleForException: anException) ];
		render: [ :html | self renderContentForException: anException on: html ].
	response nextPutAll: content.
	^ response