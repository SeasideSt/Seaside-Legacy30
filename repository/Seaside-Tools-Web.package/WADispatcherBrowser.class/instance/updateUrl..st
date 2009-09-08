processing
updateUrl: aUrl
	| browsePath currentPath |
	super updateUrl: aUrl.
	browsePath := OrderedCollection withAll: self dispatcher path.
	currentPath := OrderedCollection withAll: self application path.
	[ browsePath notEmpty and: [ currentPath notEmpty and: [ browsePath first = currentPath first ] ] ] whileTrue: [
		browsePath removeFirst.
		currentPath removeFirst ].
	browsePath do: [ :each | aUrl addToPath: each ]