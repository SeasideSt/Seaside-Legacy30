processing
updateUrl: anUrl
	| browsePath currentPath |
	super updateUrl: anUrl.
	browsePath := OrderedCollection withAll: self dispatcher path.
	currentPath := OrderedCollection withAll: self application path.
	[ browsePath notEmpty and: [ currentPath notEmpty and: [ browsePath first = currentPath first ] ] ] whileTrue: [
		browsePath removeFirst.
		currentPath removeFirst ].
	browsePath do: [ :each | anUrl addToPath: each ]