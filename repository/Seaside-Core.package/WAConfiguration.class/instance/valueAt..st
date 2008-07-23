values
valueAt: aSymbol 
	| value |
	value := self inheritedValueAt: aSymbol.
	
	^ value isNil
		ifTrue: [ nil ]
		ifFalse: [ self localValueAt: aSymbol ifAbsent: [ value ] ]