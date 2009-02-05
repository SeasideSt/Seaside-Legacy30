mutual exclusion
terminateOwner
	owner isNil ifFalse: [ WAPlatform current terminateProcess: owner ]