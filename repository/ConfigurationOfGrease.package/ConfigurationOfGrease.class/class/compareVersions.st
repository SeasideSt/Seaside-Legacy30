development support
compareVersions
	"self compareVersions"

	"Compare previous version to current version"

	"Note: you need 1.0-beta.28 or later for the class MetacelloToolBox"

	| currentVersion previousVersion |
	currentVersion := self project currentVersion.
	previousVersion := (currentVersion versionNumber copy decrementMinorVersionNumber) collapseZeros.
	((Smalltalk at: #MetacelloToolBox)
		compareVersion: previousVersion versionString
		for: self name asString
		to: currentVersion versionString) explore