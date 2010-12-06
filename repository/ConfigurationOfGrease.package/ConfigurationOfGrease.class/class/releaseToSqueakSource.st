development support
releaseToSqueakSource
	"Copy the current configuration mcz file to http://www.squeaksource.com/MetacelloRepository"

	"self releaseToSqueakSource"

	"Note: you need 1.0-beta.28 or later for the class MetacelloToolBox"

	self ensureMetacello.
	(Smalltalk at: #MetacelloToolBox) copyConfiguration: self to: 'http://www.squeaksource.com/MetacelloRepository'