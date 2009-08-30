monticello
revertWorkingCopies: aCollection
	"Restore pristine working copies."
	
	aCollection
		do: [ :each | 
			each modified: false.
			(each repositoryGroup versionWithInfo: each ancestors first)
				load ]
		displayingProgress: 'Reverting'