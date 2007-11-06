instance-creation
fileName: aFileName
	"Check the cache to see if we already have this file loaded.
	We only rely on the local filename!"

	^DocumentCache at: aFileName ifAbsentPut: [self fullFileName: aFileName]