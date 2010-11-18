development support
compareVersions
	"self compareVersions"

	"Compare previous version to development version"

	"Note: you need 1.0-beta.28 or later for the class MetacelloToolBox"

	| developmentVersion previousVersion |
	developmentVersion := self project version: #development.
	previousVersion := developmentVersion versionNumber copy decrementMinorVersionNumber collapseZeros.
	((Smalltalk at: #MetacelloToolBox)
		compareVersion: previousVersion versionString
		for: self name asString
		to: developmentVersion versionString) explore