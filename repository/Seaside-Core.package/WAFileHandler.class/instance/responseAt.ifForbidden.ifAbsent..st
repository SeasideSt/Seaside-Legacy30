private
responseAt: aPath ifForbidden: forbiddenBlock ifAbsent: absentBlock
	| libraryClass |
	aPath isEmpty ifTrue: [ ^ forbiddenBlock value ].
	libraryClass := self
		libraryAt: aPath first asSymbol
		ifAbsent: [ ^ absentBlock value ].
	^aPath size > 1
		ifTrue: [
			libraryClass
				documentAt: aPath second
				ifAbsent: absentBlock ]
		ifFalse: forbiddenBlock