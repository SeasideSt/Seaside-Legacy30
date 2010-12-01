development support
releaseDevelopmentVersion: commitMessage
	"Release a version (set version blessing to #release), update the #development and #stable symbolic versions and save the configuration."

	"self releaseDevelopmentVersion: '- release version 1.0.2'"

	"Note: you need 1.0-beta.28 or later for the class MetacelloToolBox"
	| version |
	version := self project version: #development.
	(Smalltalk at: #MetacelloToolBox)
		releaseVersion: version versionString for: self name asString;
		saveConfigurationPackageFor: self name asString description: commitMessage.
