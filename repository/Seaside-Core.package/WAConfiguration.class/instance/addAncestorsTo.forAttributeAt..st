ancestry-private
addAncestorsTo: linearCollection forAttributeAt: aSymbol
	| found |
	found := false.
	
	(linearCollection includes: self)
		ifTrue: [^ true]
		ifFalse: [linearCollection add: self.
				((aSymbol notNil and: [self canDefineAttributes]) and: [self attributesByKey includesKey: aSymbol])
					ifTrue: [ ^ true ].
				self ancestors isEmpty
					ifFalse: [self ancestors reverseDo: [:ea | (ea addAncestorsTo: linearCollection forAttributeAt: aSymbol) ifTrue: [found := true]]]].
				
	found ifFalse: [linearCollection removeLast].
	
	^ found