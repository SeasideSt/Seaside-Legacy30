values
at: aSymbol 
	| value context |
	context := self createSearchContextFor: aSymbol.

	value := self valueForContext: context.
	
	^ value isNil
		ifTrue: [ context attribute default ]
		ifFalse: [ value ]