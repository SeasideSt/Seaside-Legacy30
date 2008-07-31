values
storeValue: aConfigurationValue forAttribute: anAttribute
	^ values at: anAttribute key put: (aConfigurationValue configuration: self; yourself)