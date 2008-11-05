private
performTest
	| context |
	context := WARequestContext new.
	context codec: (SeasidePlatformSupport codecForEncoding: 'utf-8').
	WACurrentRequestContext 
		use: context
		during: [ super performTest ]