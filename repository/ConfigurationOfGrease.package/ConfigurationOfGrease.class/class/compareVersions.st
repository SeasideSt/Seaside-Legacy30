development support
compareVersions
	"Compare the current #stable version to current #development version"

	"self compareVersions"

	"Note: you need 1.0-beta.28 or later for the class MetacelloToolBox"

	| developmentVersion previousVersion |
	developmentVersion := self project version: #development.
	previousVersion := self project version: #stable.
	((Smalltalk at: #MetacelloToolBox)
		compareVersion: previousVersion versionString
		for: self name asString
		to: developmentVersion versionString) explore