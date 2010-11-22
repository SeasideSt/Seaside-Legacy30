development support
README

"Two development scenarios. 
1. open a development version for development that will stay open for a period of time:
	- load current version:
	  	(self project version: #stable) load: 'ALL'.
	- open new version for development:
		self createNewDevelopmentVersion
	- do your development and save mcz files until ready for release
	- update the the development version to match mcz file versions
		self updateToLatestPackageVersions
2. publish a new version based upon new mcz files:
	- load current version:
	  	(self project version: #stable) load: 'ALL'.
	- create new development version, load #bleedingEdge, update the mcz files in the new version:
		self updateToLatestPackageVersionsNewVersion.
One release scenario:
	- mark development version as release:
		self releaseDevelopmentVersion: 'commit comment'
	- copy configuration for general access for Squeak and Pharo:
		self releaseToSqueakSource.
	- copy configuration for general access for GLASS (Dale is willing to test and release for GLASS):
		self releaseToGemSource.
"