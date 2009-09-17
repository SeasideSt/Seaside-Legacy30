running
checkMethod: aContext 
	| periods position |
	aContext parseTree nodesDo: [ :node |
		node isSequence ifTrue: [
			periods := OrderedCollection withAll: (node
				propertyAt: #periods
				ifAbsent: [ ^ self ]).
			1 to: node statements size - 1 do: [ :index |
				position := periods removeFirst.
				((node statements at: index) stop < position and: [ position < (node statements at: index + 1) start ])
					ifFalse: [ ^ result addClass: aContext selectedClass selector: aContext selector ] ].
			(periods isEmpty or: [ periods size = 1 and: [ node statements notEmpty and: [ node statements last stop < periods first ] ] ])
				ifFalse: [ ^ result addClass: aContext selectedClass selector: aContext selector ] ] ]