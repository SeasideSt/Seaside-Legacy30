actions
deployFiles
	"Write to disk the files that the receiver use to serve as methods."
	GRPlatform current ensureExistenceOfFolder: self name.
	self fileSelectors do: [ :each | self deployFile: each ].