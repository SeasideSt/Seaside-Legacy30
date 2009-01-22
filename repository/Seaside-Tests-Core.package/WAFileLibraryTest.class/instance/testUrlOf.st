testing
testUrlOf
	self assert: (WATestingFiles / #samplePng) seasideString = ('/' , WAPlatform current defaultDispatcherName , '/files/WATestingFiles/sample.png')