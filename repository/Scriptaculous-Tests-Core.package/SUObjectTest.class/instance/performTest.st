running
performTest
	| context |
	context := WARequestContext new.
	context server: (
		WAServer new
		codec: (WACodec forEncoding: 'utf-8');
		yourself).
	
	WACurrentRequestContext 
		use: context
		during: [
			super performTest ]
	