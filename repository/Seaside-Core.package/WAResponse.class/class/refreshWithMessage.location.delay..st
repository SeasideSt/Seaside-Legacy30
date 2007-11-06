instance creation
refreshWithMessage: aString location: locationString delay: aNumber
	| document |
	document := WARenderCanvas builder
		fullDocument: true;
		rootBlock: [ :root |
			root redirectTo: locationString delay: aNumber ];
		render: [ :html |
			html heading level1
				with: aString.
			html text: 'You are being redirected to '.
			html anchor
				url: locationString;
				with: locationString ].

	^ self new nextPutAll: document