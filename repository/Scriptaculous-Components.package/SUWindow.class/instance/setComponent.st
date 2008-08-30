private
setComponent
	component ifNil: [component := componentBlock value: self].
	updateBlock ifNotNil: [updateBlock value: self value: component]