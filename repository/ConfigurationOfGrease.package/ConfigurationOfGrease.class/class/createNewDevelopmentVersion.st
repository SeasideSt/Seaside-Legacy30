development support
createNewDevelopmentVersion
	"Create a new development version using current version as model."

	"self createNewDevelopmentVersion"
	
	"Note: you need 1.0-beta.28 or later for the class MetacelloToolBox"

	self ensureMetacello.
	(Smalltalk at: #MetacelloToolBox) createNewDevelopmentVersionIn: self description: ''