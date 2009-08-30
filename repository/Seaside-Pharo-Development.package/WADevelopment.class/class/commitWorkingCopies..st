monticello
commitWorkingCopies: aCollection
	"Send changes from your working copy to the repository."

	| pair repository version |
	pair := nil.
	repository := MCRepositoryGroup default repositories
		detect: [ :each | (each isKindOf: MCHttpRepository) and: [ (each locationWithTrailingSlash endsWith: 'www.squeaksource.com/Seaside29/') and: [ each user notEmpty and: [ each password notEmpty ] ] ] ]
		ifNone: [ self error: 'No Seaside repository with login information found.' ]. 
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