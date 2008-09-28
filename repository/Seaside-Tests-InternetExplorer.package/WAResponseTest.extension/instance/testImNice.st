*seaside-tests-internetexplorer
testImNice
	self assert: response headers isEmpty.
	response imNice.
	self assert: (response headerAt: 'P3P') value 
				= 'CP="CAO PSA OUR"'.
	self assert: response headers size = 1