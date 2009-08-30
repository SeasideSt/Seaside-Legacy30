accessing
totalSize
	^ instances detectSum: [ :each | each size ]