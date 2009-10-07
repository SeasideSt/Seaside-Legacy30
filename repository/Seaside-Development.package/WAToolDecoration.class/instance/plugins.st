accessing
plugins
	^ plugins ifNil: [ plugins := WAToolPlugin allSubclassesOn: self decoratedComponent for: self ]