settings
setProperties: propertiesCache 
	| props | 
	props := propertiesCache at: self group ifAbsent: [].
	props ifNotNil: [
				self properties: props.
				self showHelp: false ] 