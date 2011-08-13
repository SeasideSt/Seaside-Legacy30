private
fileSelectors
	| selectors current |
	selectors := Set new.
	current := self class.
	[ WAFileLibrary = current ] whileFalse: [
		selectors addAll: (current selectors
			select: [ :each | self isFileSelector: each ]).
		current := current superclass ].
	^ selectors