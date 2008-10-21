accessing
canvas
	^ WARenderCanvas context: (WARenderingContext new actionUrl: (WAUrl absolute: 'http://www.seaside.st/?_s=1&_k=a'))