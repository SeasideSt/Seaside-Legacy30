scripting
scriptOpenOn: aScript
	self isVisible
		ifFalse: [
			visible := true.
			aScript effect id: self windowId; duration: 0.3; appear.
			aScript element
				id: self containerId;
				insert: [:html | 
					self setComponent.
					self renderComponentOn: html ] ].