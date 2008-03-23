public
clearHandlers
	| handlers |
	self mutex critical: [
		handlers := handlersByKey.
		handlersByKey := self dictionaryClass new.
		keysByHandler := self dictionaryClass new ].
	handlers ifNotNil: [
		[ handlers do: [ :each | each unregistered ] ]
			fork ]