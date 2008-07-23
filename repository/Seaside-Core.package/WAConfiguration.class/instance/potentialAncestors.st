ancestry
potentialAncestors
	^ self allPotentialAncestors reject: [:ea | ea = self or: [(self inheritsFrom: ea) or: [ea inheritsFrom: self]]]