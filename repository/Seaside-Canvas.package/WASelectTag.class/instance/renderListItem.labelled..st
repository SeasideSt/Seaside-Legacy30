private
renderListItem: anObject labelled: aString
	| option |
	option := canvas option.
	self hasCallback
		ifTrue: [ option callback: [ self performCallback: anObject ] ].
	option
		selected: (self isSelected: anObject);
		disabled: (self isEnabled: anObject) not;
		with: aString