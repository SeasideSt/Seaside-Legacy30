testing
testScriptTag
	self
		assert: [ :html | html script resourceUrl: 'track.js' ]
		gives: '<script src="https:/www.seaside.st/resources/track.js" type="text/javascript">/*<![CDATA[*//*]]>*/</script>'