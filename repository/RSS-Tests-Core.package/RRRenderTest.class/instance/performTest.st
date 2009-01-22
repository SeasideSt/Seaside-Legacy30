running
performTest
	| context |
	context := WARequestContext
		request: nil response: nil 
		codec: (WAPlatform current codecForEncoding: 'utf-8').
	WACurrentRequestContext 
		use: context
		during: [ super performTest ]