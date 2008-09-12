rendering
renderContentOn: html
	html select
		list: options;
		selected: selection;
		callback: [ :value | selection := value ]