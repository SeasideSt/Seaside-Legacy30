rendering
renderListItems: aSelector on: html
	html unorderedList
		id: aSelector asString;
		style: 'width: 200px; min-height: 50px;';
		script: (html sortable
			constraint: false;
			dropOnEmpty: true;
			containment: #( left right );
			onUpdate: (html updater
				id: aSelector , 'status';
				triggerSortable: aSelector asString
					callback: [ :values | self perform: aSelector asMutator with: values ];
				callback: [ :renderer | self renderListModel: aSelector on: renderer ]));
		with: [
			(self perform: aSelector) do: [ :each |
				html listItem
					passenger: each;
					class: (self classForObject: each);
					with: (self labelForObject: each) ] ]