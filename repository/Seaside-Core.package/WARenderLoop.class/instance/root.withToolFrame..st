accessing
root: aComponent withToolFrame: aBoolean
	root := aComponent
	
	"(aBoolean and: [ self application deploymentMode not ])
		ifTrue: [ WAToolFrame on: aComponent ]
		ifFalse: [ aComponent ]"