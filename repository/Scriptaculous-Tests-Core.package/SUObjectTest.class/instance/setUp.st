running
setUp
	factory := SUFactory on: (WARenderCanvas
		context: WARenderingContext new
		callbacks: WACallbackRegistry new)
	
	