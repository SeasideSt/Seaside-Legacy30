scripting
collapseOn: script
	collapsed 
		ifFalse: [
				script scriptaculous element
					id: self windowId;
					styleAt: 'height' put: self titleHeight greaseString , 'px'.
				script scriptaculous element
					id: self containerId; hide]
		ifTrue: [
				script scriptaculous element
					id: self windowId;
					styleAt: 'height' put: extent y greaseString, 'px'.
				script scriptaculous element
					id: self containerId;
					show].
	collapsed := collapsed not
