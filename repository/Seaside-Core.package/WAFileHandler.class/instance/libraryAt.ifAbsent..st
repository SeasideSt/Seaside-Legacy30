accessing
libraryAt: aSymbol ifAbsent: aBlock
	self librariesDo: [ :each |
		(each handlesFolder: aSymbol)
			ifTrue: [ ^ each ] ].
	^ aBlock value