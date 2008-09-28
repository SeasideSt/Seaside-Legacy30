rendering-ancestry
renderParentSelectorOn: html 
	| selectedParent parents |
	parents := self potentialParents.
	parents isEmpty ifFalse: 
		[ html text: 'Add parent: '.
		selectedParent := WAValueHolder new.
		html select
			selected: nil;
			labels: [ :each | self nameForConfiguration: each ];
			list: parents;
			callback: [ :value | selectedParent contents: value ].
		html space.
		html submitButton
			callback: [ self configuration addParent: selectedParent contents ];
			text: 'Add' ]