testing
testAsFileName
	| library |
	library := WAStandardFiles new.
	self assert: (library asFilename: #mainJs) = 'main.js'.
	self assert: (library asFilename: #style2Css) = 'style2.css'.
	self assert: (library asFilename: #index) = 'index'