development support
saveModifiedPackagesAndConfiguration: commitMessage
	"Save modified mcz files, update and then save the configuration."

	"self saveModifiedPackagesAndConfiguration: '- fixed bug'"

	<apiDocumentation>
	| version |
	version := self project version: #development.
	(Smalltalk at: #MetacelloToolBox)
		saveModifiedDevelopmentPackages: version versionString for: self name asString description: commitMessage;
		updateDevelopment: version versionString
			for: self name asString
			updateProjects: false
			description: commitMessage;
		saveConfigurationPackageFor: self name asString description: commitMessage