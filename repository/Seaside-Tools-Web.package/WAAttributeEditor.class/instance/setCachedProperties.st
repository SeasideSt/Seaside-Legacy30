settings
setCachedProperties
	| props | 
	props := self class propertiesCache at: group ifAbsent: [].
	props ifNotNil: [
				self properties: props.
				self showHelp: false ] 