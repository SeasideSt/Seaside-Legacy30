ancestry-private
addAncestorsTo: linearCollection forAttributeAt: aSymbol 
	| found result attribute |
	found := false.
	attribute := nil.
	(linearCollection includes: self) 
		ifTrue: [ ^ true ]
		ifFalse: 
			[ linearCollection add: self.
			((aSymbol notNil and: [ self canDefineAttributes ]) and: [ self attributes at: aSymbol ifPresent: [ :attr | ^ attr ] ] ).
			self parents isEmpty ifFalse: 
				[ self parents reverseDo: 
					[ :ea | 
					result := (ea 
						addAncestorsTo: linearCollection
						forAttributeAt: aSymbol).
					result isNil ifFalse: [
						found := true.
						result == true ifFalse: [ attribute := result ] ] ] ] ].
	found ifFalse: [ linearCollection removeLast ].
	^ (found and: [ attribute isNil ]) ifTrue: [ true ] ifFalse: [ attribute ]