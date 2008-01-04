private
defaultArguments
	^ options ifNil: [ Array new ] ifNotNil: [ Array with: options ]