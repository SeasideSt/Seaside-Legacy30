development support
DevelopmentProcess

"DEVELOPMENT Process
	- load current version:
	  	(self project version: #stable) load: 'ALL'.
	- open new version for development:
		self createNewDevelopmentVersion
	- do development and periodically save mcz files and configuration until ready for release
		self saveModifiedPackagesAndConfiguration: '- fixed bug xyz'
	- update the the development version to match mcz file versions
		self updateToLatestPackageVersions
	- save configuration
		self saveConfiguration: commitMessage '- checkpoint configuration'
RELEASE Process
	- mark development version as release:
		self releaseDevelopmentVersion: 'commit comment'
	- copy configuration for general access for Squeak and Pharo:
		self releaseToSqueakSource.
	- copy configuration for general access for GLASS (Dale is willing to test and release for GLASS):
		self releaseToGemSource.
"