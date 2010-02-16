accessing
repositoriesFor: aCollectionOfPackages
	"Answer the Monticello repositories for the given packages aCollectionOfPackages."
	
	| urls |
	urls := aCollectionOfPackages
		inject: Set new
		into: [ :result :package | 
			result
				add: package url;
				yourself ].
	^ urls collect: [ :url |
		MCHttpRepository
			location: url
			user: String new
			password: String new ]