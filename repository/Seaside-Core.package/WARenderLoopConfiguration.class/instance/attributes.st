accessing
attributes
	^ Array
		with: ((WAListAttribute key: #rootComponent) options: self rootComponents)
		with: (WAStringAttribute key: #resourceBaseUrl group: #server)