public
clear
	| objects |
	self mutex critical: [
		objects := objectsByKey.
		objectsByKey := SeasidePlatformSupport reducedConflictDictionary new.
		keysByObject := SeasidePlatformSupport reducedConflictDictionary new ].
	objects isNil ifFalse: [
		[ objects do: [ :each | each unregistered ] ]
			fork ]