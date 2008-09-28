initialization
initializeTarget: aTargetObject requestor: aRequestorObject
	super initializeTarget: aTargetObject requestor: aRequestorObject.
	self session addFilter: (filter := WATimingToolFilter new)