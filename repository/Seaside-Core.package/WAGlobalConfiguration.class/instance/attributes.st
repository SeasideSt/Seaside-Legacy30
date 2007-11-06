attributes
attributes
	^ Array
		with: ((WAListAttribute key: #serverProtocol group: #server) options: #(http https))
		with: (WAStringAttribute key: #serverHostname group: #server)
		with: (WANumberAttribute key: #serverPort group: #server)
		with: (WAStringAttribute key: #serverPath group: #server)
		with: (WABooleanAttribute key: #deploymentMode)