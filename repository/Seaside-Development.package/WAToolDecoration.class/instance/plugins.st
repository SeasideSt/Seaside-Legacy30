accessing
plugins
	^ plugins ifNil: [ plugins := WAToolPlugin allSubclassesOn: self component for: self ]