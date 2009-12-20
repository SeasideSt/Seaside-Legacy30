private
arguments
	| result |
	result := OrderedCollection with: effect with: options.
	speed isNil
		ifFalse: [ result addLast: speed ].
	complete isNil
		ifFalse: [
			speed isNil ifTrue: [ result addLast: '' ].
			result addLast: complete ].
	^ result