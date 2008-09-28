*seaside-tests-internetexplorer
testForceSafe
	self assert: response headers isEmpty.
	response forceSafe.
	self assert: (response headerAt: 'X-Download-Options') value 
				= 'noopen'.
	self assert: response headers size = 1