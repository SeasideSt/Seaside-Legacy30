actions
selectFirst
	| keys  |
	keys := self dispatcher handlers keys.
	keys isEmpty 
		ifFalse: [ self configure: (self dispatcher handlers at: keys asSortedCollection first) ]