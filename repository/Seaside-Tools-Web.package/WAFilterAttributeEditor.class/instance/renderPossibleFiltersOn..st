rendering
renderPossibleFiltersOn: html 
	| selectedFilter filters |
	filters := self potentialFilters.

	html label: 'Possible filters: '.
	html break.
	selectedFilter := WAValueHolder new.
	html select
		list: filters;
		class: 'fix';
		labels: [ :each | each name ];
		callback: [ :value | selectedFilter contents: value ].
	html space.
	html anchor
			class: 'large';
			title: 'Add new filter';
			onClick: 'return submitForm(this)';
			callback: [selectedFilter contents ifNotNil: [ self addFilterForClass: selectedFilter contents ].
						"selectedConfig contents: selectedParent contents " ];	
			with: 'Add'