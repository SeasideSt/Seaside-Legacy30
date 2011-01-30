private
useCompileUseNewCompiler: aBoolean during: aBlock
	| oldValue |
	oldValue := self compileUseNewCompiler.
	[ Preferences setPreference: #compileUseNewCompiler toValue: aBoolean.
	aBlock value ]
		ensure: [
			self compileUseNewCompiler ifTrue: [
				Preferences setPreference: #compileUseNewCompiler toValue: oldValue ] ]