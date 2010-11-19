development support
updateToLatestPackageVersionsNewVersion: newVersionString currentVersion: currentVersion
	"self updateToLatestPackageVersionsNewVersion: '1.0.1.2' currentVersion: '1.0.1.1'"

	"Creates a new version <newVersionString> based on the currentVersion <currentVersion>.
	 Loads the #bleedingEdge version.
	 Updates the mcz file versions in the new version.
	 Updates the #development symbolic version to point to <newVersionString>"
	
	"Note: you need 1.0-beta.28 or later for the class MetacelloToolBox"

	(Smalltalk at: #MetacelloToolBox)
		createDevelopmentVersion: newVersionString
		for: self name asString
		from: currentVersion versionString
		imports: currentVersion importedVersions
		afterVersion: #bleedingEdge
		loads: #('ALL')
		description: '- pick up latest mcz files'