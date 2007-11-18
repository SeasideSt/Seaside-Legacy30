rendering-visitors
visitCollectionAttribute: anAttribute with: html
	| selected current |
	selected := WAValueHolder new.
	current := configuration valueForAttribute: anAttribute.
	current
		do: [ :each | html render: (anAttribute stringForValue: each) ]
		separatedBy: [ html text: ', ' ].
	html break.
	html select
		list: anAttribute options;
		callback: [ :value | selected contents: value ].
	html submitButton 
		callback: [
			configuration 
				takeValue: (current copyWith: selected contents)
				forAttribute: anAttribute ];
		text: 'add'.
	html submitButton
		callback: [ 
			configuration 
				takeValue: (current copyWithout: selected contents)
				forAttribute: anAttribute ];
		text: 'remove'