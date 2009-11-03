processing
updateUrl: aUrl
	| browsePath currentPath |
	super updateUrl: aUrl.
	browsePath := OrderedCollection withAll: self dispatcher url path.
	currentPath := OrderedCollection withAll: self application url path.
	[ browsePath notEmpty and: [ currentPath notEmpty and: [ browsePath first = currentPath first ] ] ] whileTrue: [
		browsePath removeFirst.
		currentPath removeFirst ].
	browsePath do: [ :each | aUrl addToPath: each ]