rendering
renderTabsOn: html
	| active |
	html unorderedList class: 'head'; with: [
		elements withIndexDo: [ :assoc :index |
			active := self selected = assoc value.
			html listItem: [
				html anchor
					id: (self uid: 'head' at: index);
					class: (active ifTrue: [ 'active' ]);
					onClick: (html evaluator
						callback: [ :script | self scriptSelected: assoc value on: script ];
						return: false);
					callback: [ self selected: assoc value ];
					with: assoc key ] ] ]