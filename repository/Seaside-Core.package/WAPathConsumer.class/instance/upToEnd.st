accessing
upToEnd
	"answer the remaining elements in my path"
	| elements |
	elements := OrderedCollection new.
	[ self atEnd ] whileFalse: [ elements add: self next ].
	^ elements