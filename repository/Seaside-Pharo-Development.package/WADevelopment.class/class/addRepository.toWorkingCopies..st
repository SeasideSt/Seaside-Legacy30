monticello-repositories
addRepository: aRepository toWorkingCopies: aCollection
	aCollection do: [ :each | each repositoryGroup addRepository: aRepository ]