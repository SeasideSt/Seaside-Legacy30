monticello-repositories
removeRepository: aRepository fromWorkingCopies: aCollection
	aCollection do: [ :each | each repositoryGroup removeRepository: aRepository ]