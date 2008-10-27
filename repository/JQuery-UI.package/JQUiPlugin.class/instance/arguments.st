accessing
arguments
	| result |
	result := OrderedCollection new.
	action isNil
		ifFalse: [ result add: action ].
	arguments isNil
		ifFalse: [ result addAll: arguments ].
	(options isNil or: [ options isEmpty ])
		ifFalse: [ result add: options ].
	^ result