encoding
encode: anObject
	^(Smalltalk hasClassNamed: #WAAbstractHtmlBuilder)
		ifTrue: [ (Smalltalk classNamed: #WAAbstractHtmlBuilder) encode: anObject ]
		ifFalse: [ super encode: anObject ]