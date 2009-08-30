private
useCompileUseNewCompiler: aBoolean during: aBlock
	| oldValue |
	oldValue := self compileUseNewCompiler.
	[ Preferences setPreference: #compileUseNewCompiler toValue: aBoolean.
	aBlock value ]
		ensure: [
			self hasNewCompiler ifTrue: [
				Preferences setPreference: #compileUseNewCompiler toValue: oldValue ] ]