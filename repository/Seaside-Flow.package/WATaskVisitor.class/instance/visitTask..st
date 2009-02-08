visiting
visitTask: aTask
	super visitTask: aTask.
	(aTask activeComponent == aTask) ifTrue: [
		[ aTask execute ]
			on: WARenderNotification
			do: [ :n | ] ]