comparing
= other
	"Currently we do not take file modification time on disk into account."

	^other species = self species and: [other fullFileName = fullFileName]