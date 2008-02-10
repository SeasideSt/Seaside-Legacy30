attributes
attributes
	^ Array 
		with: (WAStringAttribute key: #directory comment: 'The base directory to serve files from.')
		with: (WABooleanAttribute key: #listing comment: 'Enable listing of directory entries.')