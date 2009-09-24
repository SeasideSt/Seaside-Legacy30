rendering
renderParentSelectorOn: html 
	| selectedParent parents |
	parents := self potentialParents.
	
	html paragraph: [
		html label: 'Possible parents: '.
		html break.
		selectedParent := WAValueHolder new.
		html select
			list: parents;
			class: 'fix';
			labels: [ :each | each name ];
			callback: [ :value | selectedParent contents: value ].
		html space.
		html submitButton
			callback: [ self configuration addParent: selectedParent contents ];
			title: 'Add new parent configuration';
			text: 'Add' ]