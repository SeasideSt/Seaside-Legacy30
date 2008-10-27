private
arguments
	| result |
	result := OrderedCollection with: effect with: options.
	speed isNil
		ifFalse: [ result addLast: speed ].
	callback isNil
		ifFalse: [ result addLast: callback ].
	^ result