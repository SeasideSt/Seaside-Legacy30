development support
releaseDevelopmentVersion: commitMessage
	"self releaseDevelopmentVersion: '- release version 1.0.2'"

	"Change blessing to #release.
	 Remove current development version from #development symbolic versions
	 Define new #stable symbolic version.
	 Commit the configuration
	 "

	"Note: you need 1.0-beta.28 or later for the class MetacelloToolBox"
	| version |
	version := self project version: #development.
	(Smalltalk at: #MetacelloToolBox)
		releaseVersion: version versionString for: self name asString;
		saveConfigurationPackageFor: self name asString description: commitMessage.
