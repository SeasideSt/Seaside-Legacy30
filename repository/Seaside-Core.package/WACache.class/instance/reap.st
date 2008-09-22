public
reap
	| expired newObjectsByKey newKeysByObject |
	expired := OrderedCollection new.
	newObjectsByKey := SeasidePlatformSupport reducedConflictDictionary new.
	newKeysByObject := SeasidePlatformSupport reducedConflictDictionary new.
	self mutex critical: [
		objectsByKey keysAndValuesDo: [ :key :object |
			(self isActive: key)
				ifFalse: [ expired add: (key -> object) ]
				ifTrue: [
					newObjectsByKey at: key put: object.
					newKeysByObject at: object put: key ] ].
		objectsByKey := newObjectsByKey.
		keysByObject := newKeysByObject ].
	
	[ expired do: [ :each | self expired: each value key: each key ] ] fork