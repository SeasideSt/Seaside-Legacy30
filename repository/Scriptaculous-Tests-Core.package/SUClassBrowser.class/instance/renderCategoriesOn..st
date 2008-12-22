rendering
renderCategoriesOn: html
	html select
		size: 5;
		id: 'categoryList';
		selected: category;
		list: self categories;
		callback: [ :value | self setCategory: value ];
		onChange: (html scriptaculous updater
			id: 'selectors';
			triggerFormElement: 'categoryList';
			on: #renderSelectorsOn: of: self;
			onSuccess: (html scriptaculous updater
				id: 'source';
				on: #renderSourceOn: of: self))