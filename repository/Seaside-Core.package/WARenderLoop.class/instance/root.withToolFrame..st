accessing
root: aComponent withToolFrame: aBoolean
	root := (aBoolean and: [ self application deploymentMode not ])
		ifTrue: [ WAToolFrame on: aComponent ]
		ifFalse: [ aComponent ]