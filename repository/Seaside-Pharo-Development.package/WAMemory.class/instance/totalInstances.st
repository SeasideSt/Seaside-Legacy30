accessing
totalInstances
	^ instances detectSum: [ :each | each count ]