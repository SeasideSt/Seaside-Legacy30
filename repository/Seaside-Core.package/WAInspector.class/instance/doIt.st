actions
doIt
	| result |
	result := self evaluate.
	selected ifNil: [ ^ self ].
	selected isNumber
		ifTrue: [ self object at: selected put: result ]
		ifFalse: [ self object instVarNamed: selected put: result ]