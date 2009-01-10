private
isFileSelector: aSymbol
	^ aSymbol isUnary and: [ (self lastUpperCaseIndexIn: aSymbol) > 1 ]