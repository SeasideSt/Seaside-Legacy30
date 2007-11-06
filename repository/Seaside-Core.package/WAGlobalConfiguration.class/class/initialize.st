initialization
initialize
	DeploymentMode ifNil: [self setDevelopmentMode]