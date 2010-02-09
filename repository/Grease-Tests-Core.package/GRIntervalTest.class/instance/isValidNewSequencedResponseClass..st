configuration
isValidNewSequencedResponseClass: aClass
	^ (aClass == SequenceableCollection) or: [
		aClass allSuperclasses includes: SequenceableCollection ]