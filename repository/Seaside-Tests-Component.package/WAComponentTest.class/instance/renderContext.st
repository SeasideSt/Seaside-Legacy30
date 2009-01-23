accessing
renderContext
	^ WARenderContext new
		actionUrl: WAUrl new;
		document: (WAHtmlDocument on: String new writeStream);
		yourself
