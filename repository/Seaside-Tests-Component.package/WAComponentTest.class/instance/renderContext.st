accessing
renderContext
	^ WARenderContext new
		actionUrl: WAUrl new;
		document: (WAHtmlStreamDocument new
			stream: String new writeStream;
			yourself);
		yourself
