monticello
commitWorkingCopies: aCollection
	"Send changes from your working copy to the repository."

	| pair version repository |
	pair := nil.
	repository := self defaultRepository.
	(repository user isEmpty or: [ repository password isEmpty ])
		ifTrue: [ ^ self error: 'Username and password required for Seaside repository.'].
	
	aCollection
		do: [ :each | 
			each needsSaving ifTrue: [ 
				version := [ each newVersion ]
					on: MCVersionNameAndMessageRequest
					do: [ :notifcation |
						notifcation resume: (pair isNil
							ifTrue: [ pair := notifcation outer ]
							ifFalse: [ Array with: notifcation suggestedName with: pair last ]) ].
				Transcript show: version summary; cr.
				repository storeVersion: version ] ]
		displayingProgress: 'Committing'