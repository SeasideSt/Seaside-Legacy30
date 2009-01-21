running
performTest
	| context |
	context := WARequestContext
		request: nil response: nil 
		codec: (SeasidePlatformSupport codecForEncoding: 'utf-8').
	WACurrentRequestContext 
		use: context
		during: [ super performTest ]