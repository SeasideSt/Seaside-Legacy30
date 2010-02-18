dependencies
resolveWith: aDictionary
	dependencies := dependencies 
		collect: [ :each | aDictionary at: each ifAbsent: [ self error: self name printString , ' depends on unknown package ' , each printString ] ]