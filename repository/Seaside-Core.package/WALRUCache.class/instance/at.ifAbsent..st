accessing
at: aKey ifAbsent: anErrorBlock
	| result |
	result := table at: aKey ifAbsent: [ ^ anErrorBlock value ].
	ageTable at: result put: 0.
	^ result