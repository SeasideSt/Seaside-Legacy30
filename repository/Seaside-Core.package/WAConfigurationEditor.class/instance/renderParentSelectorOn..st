rendering-ancestry
renderParentSelectorOn: html
	| selectedAncestor |
	selectedAncestor := WAValueHolder new.
	html select
		selected: nil;
		labels: [ :each | each name ];
		list: configuration potentialAncestors;
		callback: [ :value | selectedAncestor contents: value ].
	html space.
	html submitButton
		callback: [ configuration addAncestor: selectedAncestor contents ];
		text: 'Add'