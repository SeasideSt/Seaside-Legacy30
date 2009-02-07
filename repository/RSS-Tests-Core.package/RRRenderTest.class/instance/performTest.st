running
performTest
	| context |
	context := WARequestContext
		request: nil response: nil 
		codec: WANullCodec new.
	WACurrentRequestContext 
		use: context
		during: [ super performTest ]