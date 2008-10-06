testing
testUrlOf
	self assert: (WATestingFiles / #samplePng) seasideString = ('/' , SeasidePlatformSupport defaultDispatcherName , '/files/WATestingFiles/sample.png')