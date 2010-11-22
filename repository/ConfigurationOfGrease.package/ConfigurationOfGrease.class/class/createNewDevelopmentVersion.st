development support
createNewDevelopmentVersion
	"self createNewDevelopmentVersion"

	"Create a new development version based upon current version and it's baseline"
	
	"Note: you need 1.0-beta.28 or later for the class MetacelloToolBox"

	| currentVersion developmentVersion |
	currentVersion := self project currentVersion.
	developmentVersion := currentVersion versionNumber copy incrementMinorVersionNumber.
	(Smalltalk at: #MetacelloToolBox)
		createDevelopmentVersion: developmentVersion versionString 
		for: self name asString 
		from: currentVersion versionString 
		imports: currentVersion importedVersions