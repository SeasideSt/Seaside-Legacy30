accessing
description
	^ [
		| rootClass |
		rootClass := self rootClass.
		rootClass isNil
			ifTrue: [ String new ]
			ifFalse: [ rootClass description ] ]
		on: WAAttributeNotFound
		do: [ :err | String new ]