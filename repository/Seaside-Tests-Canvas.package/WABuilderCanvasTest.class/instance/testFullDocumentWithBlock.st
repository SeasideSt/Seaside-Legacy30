testing
testFullDocumentWithBlock
	| actual |
	actual := WARenderCanvas builder fullDocument: true;
		rootBlock: [ :root |
			root title: 'title' ];
		render: [ :html |
			html unorderedList: [
				html listItem: 'an item' ] ].
	self assert: actual = '<html><head><title>title</title></head><body><ul><li>an item</li></ul><script type="text/javascript">/*<![CDATA[*/function onLoad(){}/*]]>*/</script></body></html>'