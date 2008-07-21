attribute creation
add: anAttribute
	configuration isNil ifFalse: [ anAttribute configuration: configuration ].
	^ collection isDictionary
		ifTrue: [ collection at: anAttribute key put: anAttribute ]
		ifFalse: [ collection add: anAttribute ]