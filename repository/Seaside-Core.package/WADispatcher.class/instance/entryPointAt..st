accessing
entryPointAt: aString
	^ self
			entryPointAt: aString
			with: [ :dispatcher :token |
				dispatcher entryPoints at: token ] 