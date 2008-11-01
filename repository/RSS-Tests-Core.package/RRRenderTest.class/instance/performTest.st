running
performTest
	| context |
	context := WARequestContext new.
	context server: WAMockServerAdaptor new.
	
	WACurrentRequestContext 
		use: context
		during: [
			super performTest ]