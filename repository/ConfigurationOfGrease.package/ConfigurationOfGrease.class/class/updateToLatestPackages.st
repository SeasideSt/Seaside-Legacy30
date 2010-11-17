development support
updateToLatestPackages
	"self updateToLatestPackages"

	"Updates mcz file versions in current version"

	"Note: you need 1.0-beta.28 or later for the class MetacelloToolBox"

	(Smalltalk at: #MetacelloToolBox)
		updateDevelopment: self project currentVersion versionString
		for: self name asString
		updateProjects: false 
		description: ''