scripting
closeOn: script
	self close.
	script element id: self componentId; remove.
	script effect id: self windowId; duration: 0.5; fade