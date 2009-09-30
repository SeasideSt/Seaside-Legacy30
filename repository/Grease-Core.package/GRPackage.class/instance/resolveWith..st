dependencies
resolveWith: aDictionary
	dependencies := dependencies 
		collect: [ :each | aDictionary at: each ifAbsent: [ self error: 'Unknown dependent package: ' , each ] ]