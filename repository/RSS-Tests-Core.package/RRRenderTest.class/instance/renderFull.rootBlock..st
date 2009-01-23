private
renderFull: aBlock rootBlock: anObject
	^RRRssRenderCanvas builder
		documentClass: WAXmlDocument;
		fullDocument: true;
		rootBlock: anObject;
		render: aBlock