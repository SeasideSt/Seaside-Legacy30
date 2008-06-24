scripting
scriptCloseOn: script
	self close.
	script element id: self componentId; remove.
	script element id: self windowId; hide