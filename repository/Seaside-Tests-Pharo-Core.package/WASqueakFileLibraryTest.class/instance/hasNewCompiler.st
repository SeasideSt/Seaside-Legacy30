private
hasNewCompiler
	Preferences
		valueOfFlag: #compileUseNewCompiler
		ifAbsent: [ ^false ].
	^true