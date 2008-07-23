ancestry-private
addAncestorsTo: tempCollection linearization: linearCollection
	(linearCollection includes: self)
		ifTrue: [linearCollection addAll: tempCollection.
				tempCollection removeAllSuchThat: [:ea | true]]
		ifFalse: [tempCollection add: self.
				self ancestors isEmpty
					ifTrue: [linearCollection addAll: tempCollection.
							tempCollection removeAllSuchThat: [:ea | true]]
					ifFalse: [self ancestors reverseDo: [:ea | ea addAncestorsTo: tempCollection linearization: linearCollection]]]