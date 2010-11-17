development support
updateToLatestPackagesNewVersion
	"self updateToLatestPackagesNewVersion"

	"Updates to a new version based on incrementing the minor version number of the current version"
	
	"Note: you need 1.0-beta.28 or later for the class MetacelloToolBox"

	| currentVersion newVersion |
	currentVersion := self project currentVersion.
	newVersion := currentVersion versionNumber copy incrementMinorVersionNumber.
	self updateToLatestPackagesNewVersion: newVersion versionString currentVersion: currentVersion