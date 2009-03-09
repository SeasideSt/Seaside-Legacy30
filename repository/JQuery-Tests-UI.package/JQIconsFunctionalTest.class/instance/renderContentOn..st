rendering
renderContentOn: html
	html unorderedList
		id: 'icons';
		class: 'ui-widget';
		class: 'ui-helper-clearfix';
		with: [
			self iconClasses do: [:each |
				html listItem
					class: 'ui-state-default';
					class: 'ui-corner-all';
					title: '.',each;
					with: [html span
							class: 'ui-icon';
							class: each] ] ]
	