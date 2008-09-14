accessing
description
	^ [
		| rootClass |
		rootClass := self preferenceAt: #rootClass.
		rootClass isNil
			ifTrue: [ String new ]
			ifFalse: [ rootClass description ] ]
		on: WAAttributeNotFound
		do: [ :err | String new ]