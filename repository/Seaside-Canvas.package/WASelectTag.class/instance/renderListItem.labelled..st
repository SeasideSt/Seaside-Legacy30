private
renderListItem: anObject labelled: aString
	| option |
	option := canvas option.
	self hasCallback
		ifTrue: [ option callback: [ self performCallback: anObject ] ].
	titleBlock isNil ifFalse: [option title: (self titleForOption: anObject) ].
	option
		selected: (self isSelected: anObject);
		disabled: (self isEnabled: anObject) not;
		with: aString