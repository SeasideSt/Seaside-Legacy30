private
fileSelectors
	| selectors current |
	selectors := Set new.
	current := self class.
	[ WAFileLibrary = current ] whileFalse: [
		current selectors do: [ :each |
			(self isFileSelector: each) ifTrue: [
				selectors add: each ] ].
		current := current superclass ].
	^ selectors