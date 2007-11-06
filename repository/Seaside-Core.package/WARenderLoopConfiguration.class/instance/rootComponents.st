defaults
rootComponents
	^ (WAComponent allSubclasses select: [:ea | ea canBeRoot]) asSortedCollection: [:a :b | a name <= b name]