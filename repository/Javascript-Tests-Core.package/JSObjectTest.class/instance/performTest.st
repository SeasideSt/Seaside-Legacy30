private
performTest
	| context |
	context := WARequestContext new.
	context server: (WAServer new
		codec: (SeasidePlatformSupport codecForEncoding: 'utf-8');
		yourself).
	WACurrentRequestContext 
		use: context
		during: [ super performTest ]