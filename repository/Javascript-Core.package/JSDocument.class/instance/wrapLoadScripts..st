load scripts
wrapLoadScripts: aBlock
	self nextPutAll: '/*<![CDATA[*/'.
	aBlock value.
	self nextPutAll: '/*]]>*/'