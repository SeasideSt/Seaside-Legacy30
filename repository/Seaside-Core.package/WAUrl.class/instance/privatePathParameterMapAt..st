private
privatePathParameterMapAt: anIndex
	pathParameters isNil ifTrue: [
		pathParameters := OrderedCollection new: self path size ].
	^ pathParameters at: anIndex ifAbsentPut: [ GROrderedMultiMap new ]