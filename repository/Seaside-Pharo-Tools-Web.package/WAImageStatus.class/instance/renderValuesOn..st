rendering
renderValuesOn: html
	| image upTime |
	image := SmalltalkImage current.
	
	upTime := Duration milliseconds: Time millisecondClockValue.
	
	self renderLabel: 'Uptime' value: (self printDuration: upTime) on: html.
	self renderLabel: 'Version' value: Smalltalk version on: html.
	self renderLabel: 'Image Path' value: (image getSystemAttribute: 1) on: html.
	self
		renderLabel: 'Number of Sessions'
		value: [
			html text:self numberOfSessions.
			html space.
			html anchor
				callback: [
					WAAdmin clearSessions.
					Smalltalk garbageCollect ];
				title: 'Expires all sessions and does a full garbage collect.';
				with: 'Clear' ]
		on: html.
	self renderLabel: 'Number of Classes' value: Smalltalk size on: html.