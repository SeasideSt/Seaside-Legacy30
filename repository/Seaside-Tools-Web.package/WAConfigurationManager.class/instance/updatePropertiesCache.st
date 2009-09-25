private
updatePropertiesCache
	(self currentEditor isKindOf: WAUserConfigurationEditor)
		ifTrue: [
			self currentEditor groups do: [:each | propertiesCache at: each group put: each properties ]]