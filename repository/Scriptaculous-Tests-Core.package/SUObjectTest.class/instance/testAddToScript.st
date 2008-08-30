testing-rendering
testAddToScript
	self 
		assert: [ :html | html script: html element remove ]
		renders: '<script type="text/javascript">/*<![CDATA[*/$(this).remove()/*]]>*/</script>'