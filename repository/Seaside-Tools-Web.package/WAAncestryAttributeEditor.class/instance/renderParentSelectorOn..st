rendering
renderParentSelectorOn: html 
	| selectedParent parents |
	parents := self potentialParents.

		html label: 'Possible parents: '.
		html break.
		selectedParent := WAValueHolder new.
		html select
			list: parents;
			class: 'fix';
			labels: [ :each | each name ];
			callback: [ :value | selectedParent contents: value ].
		html space.
		html anchor
				class: 'large';
				title: 'Add new parent configuration';
				onClick: 'return submitForm(this)';
				callback: [self configuration addParent: selectedParent contents.
							selectedConfig contents: selectedParent contents  ];	
				with: 'Add'
