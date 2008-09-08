rendering
renderTabsOn: html 
	| active |
	html unorderedList
		class: 'head';
		with: [
			items withIndexDo: [ :element :index | 
				active := self selected = element.
				html listItem: [
					html anchor
						id: (self uid: 'head' at: index);
						class: (active ifTrue: ['active']);
						onClick: (html evaluator
							callback: [ :script | self scriptSelected: element on: script ];
							return: false);
						callback: [self selected: element];
						with: element label ] ] ]