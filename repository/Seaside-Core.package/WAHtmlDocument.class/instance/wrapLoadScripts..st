load scripts
wrapLoadScripts: aBlock
	self nextPutAll: '/*<![CDATA[*/function onLoad(){'.
	aBlock value.
	self nextPutAll: '}/*]]>*/'