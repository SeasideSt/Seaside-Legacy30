accessing
libraries
	^ libraries ifNil: [libraries := OrderedCollection withAll: self defaultLibraries]