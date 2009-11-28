actions
selectFirst
	| keys  |
	keys := self dispatcher handlers keysSortedSafely.
	keys isEmpty 
		ifFalse: [ self configure: (self dispatcher handlers at: keys first) ]