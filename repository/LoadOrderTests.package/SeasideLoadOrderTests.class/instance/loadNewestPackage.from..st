load and test
loadNewestPackage: aString from: aRepository
	| packageName |
	packageName := self latestVersionForPackage: (self extractPackageName: aString) repository: aRepository.
	packageName ifNotNil: 
		[(self isPackageLoaded: packageName) ifFalse: [
				packageName := packageName , '.mcz'.
				self loadPackage: packageName from: aRepository]]
	