instance creation
method: methodString uri: aUrlOrString version: versionArray
	^ self basicNew
		initializeWithMethod: methodString
			uri: aUrlOrString
			version: versionArray;
		yourself