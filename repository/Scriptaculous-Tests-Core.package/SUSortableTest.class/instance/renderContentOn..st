rendering
renderContentOn: html
	| id |
	html unorderedList
		id: (id := html nextId);
		script: (html sortable
			onUpdate: (html request
				triggerSortable: id
				callback: [ :value | collection := value ]));
		with: [ self renderListItemsOn: html ]