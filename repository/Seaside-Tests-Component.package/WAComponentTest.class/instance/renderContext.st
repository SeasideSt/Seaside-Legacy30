accessing
renderContext
	^ WARenderContext new
		actionUrl: WAUrl new;
		document: (WAHtmlStreamDocument on: String new writeStream);
		yourself
