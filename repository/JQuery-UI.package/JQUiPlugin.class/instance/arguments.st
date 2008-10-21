accessing
arguments
	^ action isNil
		ifTrue: [ 
			options isNil
				ifTrue: [ Array new ]
				ifFalse: [ Array with: options ] ]
		ifFalse: [
			options isNil
				ifTrue: [ Array with: action ]
				ifFalse: [ Array with: action with: options ] ]