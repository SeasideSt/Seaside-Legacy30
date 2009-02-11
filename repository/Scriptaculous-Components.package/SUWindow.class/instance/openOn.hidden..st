scripting
openOn: aScript hidden: aBoolean
	self isVisible
		ifFalse: [
			visible := true.
			aBoolean ifFalse: [self showOn: aScript ].
			aScript scriptaculous element
				id: self windowId;
				styleAt: 'left' put: origin x asString, 'px';
				styleAt: 'top' put: origin y asString, 'px'.
			aScript scriptaculous element
				id: self containerId;
				insert: [:html |
					self setComponent.
					self renderComponentOn: html ] ].