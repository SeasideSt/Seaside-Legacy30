file library
compile: aString into: aClass classified: aSymbol 
	"The trick here is to be as silently a possible so that the package is not marked dirty when running WAFileLibrary test.
	This also makes running tests much faster."
	| methodNode compiledMethod selector  |
	methodNode := aClass compilerClass new 
		compile: aString
		in: aClass
		notifying: nil
		ifFail: [ GRError signal: 'syntax error' ].
	selector := methodNode selector.
	compiledMethod := methodNode generate: aClass defaultMethodTrailer.
	compiledMethod 
		putSource: aString
		inFile: 2
		withPreamble: [ :file | 
			aClass
				printCategoryChunk: aSymbol asString
				on: file
				withStamp: Author changeStamp
				priorMethod: (aClass compiledMethodAt: selector ifAbsent: [ nil ]).
			file cr ].
	aClass 
		addSelectorSilently: selector
		withMethod: compiledMethod.
	self doSilently:  [
		aClass organization 
			classify: selector
			under: aSymbol ]