ancestry-private
addAncestorsTo: tempCollection linearization: linearCollection
	(linearCollection includes: self)
		ifTrue: [linearCollection addAll: tempCollection.
				tempCollection removeAllSuchThat: [:ea | true]]
		ifFalse: [tempCollection add: self.
				self ancestors isEmpty
					ifTrue: [linearCollection addAll: tempCollection.
							tempCollection removeAllSuchThat: [:ea | true]]
					ifFalse: [self ancestors reversed do: [:ea | ea addAncestorsTo: tempCollection linearization: linearCollection]]]