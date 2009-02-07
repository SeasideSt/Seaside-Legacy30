public
clear
	"Remove all objects from the cache. The removal action will be triggered for each
	object that is removed."
	
	| objects |
	mutex critical: [
		objects := objectsByKey.
		objectsByKey := WAPlatform current reducedConflictDictionary new.
		keysByObject := WAPlatform current reducedConflictDictionary new.
		objects isNil ifFalse: [
			objects keysAndValuesDo: [ :key :object | self notifyRemoved: object key: key ] ] ]