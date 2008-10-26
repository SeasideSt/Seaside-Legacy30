rendering
renderContentOn: html
	html unorderedList
		script: (html jQuery new selectable
			onStop: (html jQuery ajax
				trigger: [ :value | selected := value asSet ]
				passengers: (html jQuery this find: 'li.ui-selected')));
		with: [
			JQFunctionalTest allSubclasses do: [ :each |
				html listItem
					passenger: each;
					class: 'ui-selected' if: (selected includes: each);
					with: each name ] ]