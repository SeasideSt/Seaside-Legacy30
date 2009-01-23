accessing
canvas
	^ WARenderCanvas context: (WARenderContext new
		actionUrl: (WAUrl absolute: 'http://www.seaside.st/?_s=1&_k=a');
		document: (WAHtmlDocument 
			on: String new writeStream
			codec: self requestContext codec);
		yourself)