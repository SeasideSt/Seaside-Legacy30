rendering-elements
renderSelectListOn: html
	self
		renderLabel: 'Select-List'
		control: [ :id |
			html select
				id: id;
				list: (1 to: 9);
				selected: selectList;
				callback: [ :value | selectList := value ] ]
		model: selectList
		on: html