public
clearHandlers
	| handlers |
	self mutex critical: [
		handlers := handlersByKey.
		handlersByKey := SeasidePlatformSupport reducedConflictDictionary new.
		keysByHandler := SeasidePlatformSupport reducedConflictDictionary new ].
	handlers ifNotNil: [
		[ handlers do: [ :each | each unregistered ] ]
			fork ]