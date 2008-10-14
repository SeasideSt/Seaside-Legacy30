public
javascript: aBlock
	"Evaluate aBlock with an SUScript instance and pushes the resulting script-string aString to all associated handlers."
	
	| script |
	aBlock value: (script := JSScript on: self canvas).
	self push: (String streamContents: [ :stream |
		stream
			nextPutAll: '<script type="text/javascript">parent.Comet.eval(';
			javascript: script asJavascript;
			nextPutAll: ')</script>' ])