private
performTest
	WACurrentRequestContext 
		use: WARequestContext new
		during: [ super performTest ]