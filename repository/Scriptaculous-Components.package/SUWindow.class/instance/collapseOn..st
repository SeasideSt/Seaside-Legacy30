scripting
collapseOn: script
	collapsed 
		ifFalse: [script element id: self windowId; styleAt: 'height' put: '16px'.
				script element id: self containerId; hide]
		ifTrue: [script element id: self windowId; styleAt: 'height' put: extent y asString, 'px'.
				script element id: self containerId; show].
	collapsed := collapsed not
