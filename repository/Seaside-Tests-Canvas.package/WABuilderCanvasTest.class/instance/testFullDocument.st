testing
testFullDocument
	| actual |
	actual := WARenderCanvas builder fullDocument: true; render: [ :html |
		html unorderedList: [
			html listItem: 'an item' ] ].
	self assert: actual = '<html><head><title></title></head><body><ul><li>an item</li></ul><script type="text/javascript">/*<![CDATA[*/function onLoad(){}/*]]>*/</script></body></html>'