accessing
canvas
	^ WARenderCanvas context: (WARenderingContext new
		actionUrl: (WAUrl absolute: 'http://www.seaside.st/?_s=1&_k=a');
		document: (WAHtmlStreamDocument new
			stream: String new writeStream;
			yourself);
		yourself)