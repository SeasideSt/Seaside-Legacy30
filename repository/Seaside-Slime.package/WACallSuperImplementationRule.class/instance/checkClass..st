running
checkClass: aContext
	| current |
	aContext selectedClass isMeta
		ifTrue: [ ^ self ].
	current := aContext selectedClass superclass.
	superSelectors := Set new.
	[ current isNil ] whileFalse: [
		classesAndSelectors
			at: current name
			ifPresent: [ :values | superSelectors addAll: values ].
		current := current superclass ]