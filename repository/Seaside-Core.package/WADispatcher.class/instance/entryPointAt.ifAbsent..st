accessing
entryPointAt: aString ifAbsent: aBlock
	^self entryPointAt: aString with: [ :dispatcher :token | dispatcher entryPoints at: token ifAbsent: [^aBlock value] ] 