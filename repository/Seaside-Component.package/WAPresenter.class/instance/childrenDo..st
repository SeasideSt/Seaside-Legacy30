iterating
childrenDo: aBlock
	self children do: [ :each | 
		each isNil
			ifFalse: [ aBlock value: each ] ]