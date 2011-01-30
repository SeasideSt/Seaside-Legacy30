private
compileUseNewCompiler
	^ Preferences
		valueOfFlag: #compileUseNewCompiler
		ifAbsent: [ false ]