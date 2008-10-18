comparing
= anObject
	^ self species = anObject species
		and: [ self mimeType = anObject mimeType
		and: [ self fileName = anObject fileName
		and: [ self contents = anObject contents ] ] ]