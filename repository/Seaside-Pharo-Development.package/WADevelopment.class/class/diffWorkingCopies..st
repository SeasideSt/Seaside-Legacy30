monticello
diffWorkingCopies: aCollection
	"Display the differences between the working copy and the base."
	
	| patches patch |
	patches := OrderedCollection new.
	aCollection
		do: [ :each |
			patch := each package snapshot 
				patchRelativeToBase: (each ancestors isEmpty
					ifTrue: [ MCSnapshot empty ]
					ifFalse: [ (each repositoryGroup versionWithInfo: each ancestors first) snapshot ]).
			each modified: patch isEmpty not.
			patches addAll: patch operations ]
		displayingProgress: 'Diffing'.
	(MCPatch operations: patches)
		browse