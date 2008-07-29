ancestry-private
addAncestorsTo: linearCollection forAttributeAt: aSymbol 
	| found |
	found := false.
	(linearCollection includes: self) 
		ifTrue: [ ^ true ]
		ifFalse: 
			[ linearCollection add: self.
			((aSymbol notNil and: [ self canDefineAttributes ]) and: [ self attributes includesKey: aSymbol ]) ifTrue: [ ^ true ].
			self parents isEmpty ifFalse: 
				[ self parents reverseDo: 
					[ :ea | 
					(ea 
						addAncestorsTo: linearCollection
						forAttributeAt: aSymbol) ifTrue: [ found := true ] ] ] ].
	found ifFalse: [ linearCollection removeLast ].
	^ found