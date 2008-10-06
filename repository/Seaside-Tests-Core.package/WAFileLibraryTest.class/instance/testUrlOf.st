testing
testUrlOf
	self assert: (WAStandardFiles / #seasideJpg) seasideString = ('/' , SeasidePlatformSupport defaultDispatcherName , '/files/WAStandardFiles/seaside.jpg')