private
librariesDo: aOneArgumentBlock
	self libraryRootClasses do: [ :each | each allSubclassesDo: aOneArgumentBlock ]