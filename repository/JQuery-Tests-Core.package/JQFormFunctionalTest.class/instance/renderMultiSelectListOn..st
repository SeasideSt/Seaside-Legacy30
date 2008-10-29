rendering-elements
renderMultiSelectListOn: html
	self
		renderLabel: 'Multi-Select-List'
		control: [ :id |
			html multiSelect
				id: id;
				size: 3;
				list: (1 to: 9);
				selected: mutliSelectList;
				callback: [ :value | mutliSelectList := value ] ]
		model: mutliSelectList
		on: html