rendering
renderContentOn: html
	html unorderedList
		script: (html jQuery new selectable
			onStop: (html jQuery ajax
				trigger: [ :value | selected := value asSet ]
				passengers: (html jQuery this find: '.ui-selected')));
		with: [
			items do: [ :each |
				html listItem
					class: 'ui-selected' if: (selected includes: each);
					passenger: each;
					with: each ] ]