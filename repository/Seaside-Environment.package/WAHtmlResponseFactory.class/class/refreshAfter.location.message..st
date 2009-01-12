response generation
refreshAfter: aNumber location: aUrlOrString message: aString
	| response document |
	response := WAResponse new.
	response refreshAfter: aNumber location: aUrlOrString.
	
	document := WARenderCanvas builder
		fullDocument: true;
		render: [ :html |
			html heading level1; with: aString.
			html paragraph: [
				html text: 'You are being redirected to '.
				html anchor
					url: aUrlOrString;
					with: aUrlOrString seasideString ] ].
	
	response nextPutAll: document.
		
	^ response