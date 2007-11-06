private
unregisterExpiredHandlers
	| expired newHandlersByKey newKeysByHandler |
	expired := OrderedCollection new.
	newHandlersByKey := Dictionary new.
	newKeysByHandler := Dictionary new.
	self mutex critical: [
		handlersByKey keysAndValuesDo: [ :key :value |
			value isActive
				ifFalse: [ expired add: value ]
				ifTrue: [
					newHandlersByKey at: key put: value.
					newKeysByHandler at: value put: key ] ].
		handlersByKey := newHandlersByKey.
		keysByHandler := newKeysByHandler ].
	[ expired do: [ :each | each unregistered ] ]
		fork