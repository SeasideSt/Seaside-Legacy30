converting-request
requestBodyFor: aNativeRequest
	
	^ (HttpRequest includesSelector: #rawRequestContents)
		ifTrue: [ "requires Comanche 7.1.3
			see HttpService class >> #version"
			aNativeRequest rawRequestContents ]
		ifFalse: [
			aNativeRequest method = 'PUT'
				ifTrue: [
					"bloody, unholy hack"
					aNativeRequest stream next: aNativeRequest contentLength ]
				ifFalse: [
					"This will only work for POST requests... not really cool."
					aNativeRequest rawPostFields ] ]