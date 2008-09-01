processing
responseForRequest: aRequest
	^ self isClosed
		ifFalse: [ super responseForRequest: aRequest ]
		ifTrue: [
			| content |
			content := WARenderCanvas builder
				fullDocument: true;
				rootBlock: [ :root | root title: 'Page Expired' ];
				render: [ :html |
					html heading: 'Page Expired'.
					html paragraph: 'Please use the back-button to navigate to the last valid page.' ].
			WAResponse new
				nextPutAll: content;
				doNotCache;
				yourself ]