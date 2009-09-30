initialization
initializeTarget: aTargetObject requestor: aRequestorObject
	super initializeTarget: aTargetObject requestor: aRequestorObject.
	filter := self session filters
		detect: [ :each | each isKindOf: WADeprecatedToolFilter ]
		ifNone: [ self session addFilter: WADeprecatedToolFilter new ]