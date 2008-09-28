*seaside-tests-internetexplorer
testIMeanIt
	self assert: response headers isEmpty.
	response iMeanIt.
	self assert: (response headerAt: 'X-Content-Type-Options') value 
				= 'nosniff'.
	self assert: response headers size = 1