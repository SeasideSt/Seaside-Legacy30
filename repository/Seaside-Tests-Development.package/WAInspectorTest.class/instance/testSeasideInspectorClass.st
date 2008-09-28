testing
testSeasideInspectorClass
	| inspectorClass |
	inspectorClass := SeasidePlatformSupport seasideInspectorClass.
	self assert: inspectorClass notNil