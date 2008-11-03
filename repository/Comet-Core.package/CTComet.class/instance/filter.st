accessing-readonly
filter
	^ canvas session filters
		detect: [ :each | each isCometFilter ]
		ifNone: [ canvas session addFilterFirst: CTFilter new ]