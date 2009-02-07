public
clear
	| objects |
	self mutex critical: [
		objects := objectsByKey.
		objectsByKey := WAPlatform current reducedConflictDictionary new.
		keysByObject := WAPlatform current reducedConflictDictionary new ].
	
	objects isNil ifFalse: [
		[ objects keysAndValuesDo: [ :key :object | self notifyRemoved: object key: key ] ] fork ]