processing
updateUrl: aUrl
	| browsePath currentPath |
	super updateUrl: aUrl.
	browsePath := OrderedCollection withAll: self dispatcher baseUrl path.
	currentPath := OrderedCollection withAll: self application baseUrl path.
	[ browsePath notEmpty and: [ currentPath notEmpty and: [ browsePath first = currentPath first ] ] ] whileTrue: [
		browsePath removeFirst.
		currentPath removeFirst ].
	browsePath do: [ :each | aUrl addToPath: each ]