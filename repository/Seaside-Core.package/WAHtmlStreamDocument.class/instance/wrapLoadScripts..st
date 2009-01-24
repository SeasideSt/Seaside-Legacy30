load scripts
wrapLoadScripts: aBlock
	self nextPutAll: '/*<![CDATA[*/function onLoad(){'.
	super wrapLoadScripts: aBlock.
	self nextPutAll: '}/*]]>*/'