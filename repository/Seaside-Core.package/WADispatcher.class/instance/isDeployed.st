testing
isDeployed
	^ self entryPoints anySatisfy: [ :each | each isDeployed ]