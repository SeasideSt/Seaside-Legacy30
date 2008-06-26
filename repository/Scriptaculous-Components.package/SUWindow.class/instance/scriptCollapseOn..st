scripting
scriptCollapseOn: script
	"script effect id: self containerId; duration: 0.3; blindUp."
	collapsed 
		ifFalse: [script element id: self windowId; styleAt: 'height' put: '16px']
		ifTrue: [script element id: self windowId; styleAt: 'height' put: extent y asString, 'px'].
	collapsed := collapsed not