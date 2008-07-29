attributes
addAttributes: attributes
	(attributes boolean: #deploymentMode)
		comment: 'Whether the application is deployed (defaults to the value of the DeploymentMode global';
		default: DeploymentMode.