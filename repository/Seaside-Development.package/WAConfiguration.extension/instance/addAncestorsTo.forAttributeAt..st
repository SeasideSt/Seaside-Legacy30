*seaside-development
addAncestorsTo: linearCollection forAttributeAt: aSymbol 
	| found result attribute |
	found := false.
	attribute := nil.
	(linearCollection includes: self) 
		ifTrue: [ ^ true ]
		ifFalse: [
			linearCollection add: self.
			aSymbol notNil ifTrue: [ self localAttributeAt: aSymbol ifPresent: [ :attr | ^ attr ] ].
			self parents isEmpty ifFalse: [
				self parents reverseDo: [ :each | 
					result := each
						addAncestorsTo: linearCollection
						forAttributeAt: aSymbol.
					result isNil ifFalse: [
						found := true.
						result == true ifFalse: [ attribute := result ] ] ] ] ].
	found ifFalse: [ linearCollection removeLast ].
	^ (found and: [ attribute isNil ]) ifTrue: [ true ] ifFalse: [ attribute ]