ancestry-private
addAncestorsTo: tempCollection forAttributeAt: aSymbol linearization: linearCollection
	| found |
	found := false.

	(linearCollection includes: self)
		ifTrue: [linearCollection addAll: tempCollection.
				tempCollection removeAllSuchThat: [:ea | true].
				^ true]
		ifFalse: [tempCollection add: self.
				self canDefineAttributes ifTrue: [
					(self attributesByKey includesKey: aSymbol) ifTrue: [
						linearCollection addAll: tempCollection.
						tempCollection removeAllSuchThat: [:ea | true].
						^ true ] ].
				self ancestors isEmpty
					ifFalse: [self ancestors reverseDo: [:ea | (ea addAncestorsTo: tempCollection forAttributeAt: aSymbol linearization: linearCollection) ifTrue: [found := true]]]].
				
	found ifFalse: [tempCollection removeLast].
	
	^ found