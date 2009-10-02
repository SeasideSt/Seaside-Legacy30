accessing
includesAdvanced: attributes 
	attributes do: [:each | each isAdvanced ifTrue: [^true] ].
	^false