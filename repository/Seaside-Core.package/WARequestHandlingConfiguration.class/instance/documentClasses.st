private
documentClasses
	^ WAHtmlStreamDocument withAllSubclasses asSortedCollection: [ :a :b | a name <= b name ]