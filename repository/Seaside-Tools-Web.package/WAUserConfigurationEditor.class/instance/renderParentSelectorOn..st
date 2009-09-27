rendering-ancestry
renderParentSelectorOn: html 
	| selectedParent parents |
	parents := self potentialParents.
	parents isEmpty ifTrue: [ ^self ].
	
	html paragraph: [
		html text: 'Add Parent: '.
		selectedParent := WAValueHolder new.
		html select
			selected: nil;
			list: parents;
			labels: [ :each | each name ];
			callback: [ :value | selectedParent contents: value ].
		html space.
		html submitButton
			callback: [ self configuration addParent: selectedParent contents ];
			text: 'Add' ]