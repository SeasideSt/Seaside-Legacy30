as yet unclassified
testParts
	message setHtmlBody: [ :h | h paragraph: 'hello' ].
	self assert: message parts size equals: 2.
	self assert: message parts asArray sort last isHtml.
	self assert: message plainTextBodyString equals: 'Hello'.
	self assert: message htmlBodyString equals:'<html><head><title></title></head><body onload="onLoad()"><p>hello</p><script type="text/javascript">/*<![CDATA[*/function onLoad(){};/*]]>*/</script></body></html>'