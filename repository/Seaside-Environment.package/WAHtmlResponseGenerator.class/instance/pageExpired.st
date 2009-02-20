generation
pageExpired
	self response
		doNotCache;
		contentType: WAMimeType textHtml;
		nextPutAll: (WARenderCanvas builder
			fullDocument: true;
			rootBlock: [ :root | root title: 'Page Expired' ];
			render: [ :html | 
				html heading: 'Page Expired'.
				html paragraph: 'This page has expired. Please use the back-button to navigate to the last valid page.' ])