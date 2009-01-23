private
render: anObject
	^WARenderer builder render: [ :html |
		html render: anObject ]