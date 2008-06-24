scripting
scriptOpenOn: aScript
	self isVisible
		ifFalse: [
			aScript element
				id: self windowId; show.
			aScript element
				id: self containerId;
				insert: [:html | 
					self setComponent.
					self renderComponentOn: html ] ].