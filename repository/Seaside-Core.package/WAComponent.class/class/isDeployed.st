testing
isDeployed
	"When returning true, the component is to be kept in a deployed system,
	otherwise it is disabled"

	^ false

"
	Usage:

	1. 	Implement #isDeployed on the class side of
		the deployed root components

	2.	Evaluate the following

		WADispatcher default trimForDeployment

"