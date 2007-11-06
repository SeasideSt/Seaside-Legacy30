private
trimForDeployment
	"removes all non-production applications
	see: WAComponent class >> #isDeployed"

	(self entryPoints reject: [ :each | each isDeployed ])
		do: [ :each | self unregister: each ].
	(self entryPoints select: [ :each | each isDispatcher ])
		do: [ :each | each trimForDeployment ]