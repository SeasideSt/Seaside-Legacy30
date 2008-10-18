comparing
= other
	^ other species = self species
		and: [ other document = self document
		and: [ other mimeType = self mimeType ] ]