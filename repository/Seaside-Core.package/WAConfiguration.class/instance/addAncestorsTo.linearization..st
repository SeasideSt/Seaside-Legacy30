ancestry-private
addAncestorsTo: tempCollection linearization: linearCollection
	(linearCollection includes: self)
		ifTrue: [tempCollection do: [:ea | linearCollection add: ea before: self].
				tempCollection removeAllSuchThat: [:ea | true]]
		ifFalse: [tempCollection add: self.
				self ancestors isEmpty
					ifTrue: [linearCollection addAll: tempCollection.
							tempCollection removeAllSuchThat: [:ea | true]]
					ifFalse: [self ancestors do: [:ea | ea addAncestorsTo: tempCollection linearization: linearCollection]]]