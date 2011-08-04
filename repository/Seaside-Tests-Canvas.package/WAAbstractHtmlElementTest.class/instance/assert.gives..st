private
assert: aBlock gives: aString
	| html |
	html := self builder
		fullDocument: true;
		rootBlock: aBlock;
		render: [ :h | ].
	self
		assert: html = ('<html><head><title></title>', aString, '</head><body onload="onLoad()"><script type="text/javascript">/*<![CDATA[*/function onLoad(){};/*]]>*/</script></body></html>')
		description:	'Expected: ' , aString printString , ', Actual: ' , html printString
		resumable: true