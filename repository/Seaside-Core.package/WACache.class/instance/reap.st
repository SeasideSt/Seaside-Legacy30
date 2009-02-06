public
reap
	"Iterate through the cache and remove objects that have expired."

	| newObjectsByKey newKeysByObject |
	newObjectsByKey := WAPlatform current reducedConflictDictionary new.
	newKeysByObject := WAPlatform current reducedConflictDictionary new.
	mutex critical: [
		objectsByKey keysAndValuesDo: [ :key :object |
			(self expiryPolicy isExpired: object key: key)
				ifTrue: [ self notifyRemoved: object key: key ]
				ifFalse: [
					newObjectsByKey at: key put: object.
					newKeysByObject at: object put: key ] ].
		objectsByKey := newObjectsByKey.
		keysByObject := newKeysByObject ]