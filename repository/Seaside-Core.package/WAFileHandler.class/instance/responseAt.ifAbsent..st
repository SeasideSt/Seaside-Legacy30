private
responseAt: aPath ifAbsent: aBlock
	| libraryClass |
	libraryClass := self
		libraryAt: aPath first asSymbol
		ifAbsent: [ ^ aBlock value ].
	^aPath size > 1
		ifTrue: [
			libraryClass
				documentAt: aPath second
				ifAbsent: aBlock ]
		ifFalse: [  libraryClass renderListing  ]