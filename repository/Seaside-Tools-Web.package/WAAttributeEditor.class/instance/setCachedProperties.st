settings
setCachedProperties
	| props | 
	props := self class propertiesCache at: group ifAbsent: [].
	props isNil ifFalse: [
				self properties: props.
				self showHelp: false ] 