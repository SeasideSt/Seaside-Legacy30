running
checkClass: aContext
	| current |
	aContext selectedClass isMeta
		ifTrue: [ ^ self ].
	current := aContext selectedClass superclass.
	superSelectors := OrderedCollection new.
	[ current isNil ] whileTrue: [
		classesAndSelectors
			at: current name
			ifPresent: [ :values | superSelectors addAll: values ].
		current := current superclass ]