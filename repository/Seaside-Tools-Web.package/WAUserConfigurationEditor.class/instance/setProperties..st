accessing
setProperties: propertiesCache

	groups do: [:each | | props | 
			props := propertiesCache at: each group ifAbsent: [].
			props ifNotNil: [
					each properties: props.
					each showHelp: false ] ]