migrating
migrateAllToSeaside29
	self allSubclassesDo: [ :each |
		each migrateToSeaside29 ]