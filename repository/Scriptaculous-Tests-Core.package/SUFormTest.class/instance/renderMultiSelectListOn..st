rendering-elements
renderMultiSelectListOn: html
	self
		renderLabel: 'Multi-Select-List'
		control: [ :fid :mid |
			html multiSelect
				size: 3;
				list: (1 to: 9);
				selected: mutliSelectList;
				callback: [ :value | mutliSelectList := value ];
				onChange: (html scriptaculous updater
					id: mid;
					triggerForm: fid;
					callback: [ :r | r render: mutliSelectList ]) ]
		model: mutliSelectList
		on: html