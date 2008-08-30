testing-rendering
testAddToTag
	self 
		assert: [ :html | html div script: html element remove ]
		renders: '<div id="id1"></div><script type="text/javascript">/*<![CDATA[*/$("id1").remove()/*]]>*/</script>'