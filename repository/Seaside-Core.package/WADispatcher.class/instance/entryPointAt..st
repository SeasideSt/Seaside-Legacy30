accessing
entryPointAt: aString
	^ (aString findTokens: '/') inject: self into: [ :dispatcher :token | dispatcher entryPoints at: token ifAbsent: [^nil] ] 