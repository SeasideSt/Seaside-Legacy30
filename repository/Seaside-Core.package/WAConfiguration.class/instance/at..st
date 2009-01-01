values
at: aSymbol 
	| value context |
	context := WAAttributeContext key: aSymbol target: self.

	context attribute isNil ifTrue: [ ^ (WAAttributeNotFound key: aSymbol) raiseSignal ].

	value := self valueAt: aSymbol context: context.
	
	^ value isNil
		ifTrue: [ context attribute default ]
		ifFalse: [ value ]