initialization
initializeTarget: aTargetObject requestor: aRequestorObject
	super initializeTarget: aTargetObject requestor: aRequestorObject.
	filter := self session filters
		detect: [ :each | each isKindOf: WATimingToolFilter ]
		ifNone: [ self session addFilter: WATimingToolFilter new ]