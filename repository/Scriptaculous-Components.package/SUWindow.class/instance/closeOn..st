scripting
closeOn: script
	self close.
	script scriptaculous element
		id: self componentId;
		remove.
	script scriptaculous effect
		id: self windowId;
		duration: 0.5; fade