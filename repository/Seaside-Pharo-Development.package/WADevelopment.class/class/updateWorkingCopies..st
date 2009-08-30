monticello
updateWorkingCopies: aCollection
	"Bring the latest changes from the repository into the image."
	
	| versions loaded version |
	aCollection
		do: [ :each |
			versions := each possiblyNewerVersions.
			versions isEmpty ifFalse: [
				loaded := false.
				each repositoryGroup repositories do: [ :repository | 
					loaded ifFalse: [
						version := [ repository loadVersionFromFileNamed: versions first , '.mcz' ]
							on: FileDoesNotExistException, FileStreamException
							do: [ :err | nil ].
						version isNil ifFalse: [ version load. loaded := true ] ] ] ] ]
		displayingProgress: 'Updating'