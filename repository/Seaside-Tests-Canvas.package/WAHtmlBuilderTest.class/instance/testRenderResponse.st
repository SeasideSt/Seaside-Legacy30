testing
testRenderResponse
	| context |
	context := WARequestContext request: WARequest new response: WABufferedResponse new.
	self 
		should: [
			WACurrentRequestContext
				use: context
				during: [
					WARenderCanvas builder renderResponse: [ :html |
						html unorderedList: [
							html listItem: 'an item' ] ] ] ]
		raise: WAResponseNotification.
	self assert: context response status = 200.
	self assert: context response contentType seasideString = 'text/html'.
	self assert: context response contents = '<html><head><title></title></head><body><ul><li>an item</li></ul><script type="text/javascript">/*<![CDATA[*/function onLoad(){}/*]]>*/</script></body></html>'