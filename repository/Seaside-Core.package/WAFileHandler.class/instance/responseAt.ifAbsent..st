private
responseAt: aPath ifAbsent: aBlock
	| libraryName fileName libraryClass |
	libraryName := aPath at: aPath size - 1.
	fileName := aPath last.
	libraryClass := self
		libraryAt: libraryName asSymbol
		ifAbsent: [ ^ aBlock value ].
	^ libraryClass
		documentAt: fileName
		ifAbsent: aBlock