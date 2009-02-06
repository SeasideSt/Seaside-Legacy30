public
reap
	| expired newObjectsByKey newKeysByObject |
	expired := OrderedCollection new.
	newObjectsByKey := WAPlatform current reducedConflictDictionary new.
	newKeysByObject := WAPlatform current reducedConflictDictionary new.
	self mutex critical: [
		objectsByKey keysAndValuesDo: [ :key :object |
			(self expiryPolicy isExpired: object key: key)
				ifTrue: [ expired add: (key -> object) ]
				ifFalse: [
					newObjectsByKey at: key put: object.
					newKeysByObject at: object put: key ] ].
		objectsByKey := newObjectsByKey.
		keysByObject := newKeysByObject ].
	
	[ expired do: [ :each | self notifyReaped: each value key: each key ] ] fork