private
updatePropertiesCache
	(self currentEditor isKindOf: WAHandlerEditor)
		ifTrue: [
			self currentEditor subComponents do: [:each | propertiesCache at: each group put: each properties ]]