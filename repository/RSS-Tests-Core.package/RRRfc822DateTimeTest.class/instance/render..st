private
render: anObject
	^WARenderCanvas builder
		render: [ :html | html render: anObject ]