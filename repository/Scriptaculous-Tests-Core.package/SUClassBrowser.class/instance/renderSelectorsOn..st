rendering
renderSelectorsOn: html
	html select
		size: 5;
		id: 'selectorList';
		selected: selector;
		list: self selectors;
		callback: [ :value | self setSelector: value ];
		onChange: (html scriptaculous updater
			id: 'source';
			triggerFormElement: 'selectorList';
			on: #renderSourceOn: of: self)