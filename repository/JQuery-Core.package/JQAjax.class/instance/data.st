accessing
data
	^ self optionAt: 'data' ifAbsentPut: [ JSJoin new ]