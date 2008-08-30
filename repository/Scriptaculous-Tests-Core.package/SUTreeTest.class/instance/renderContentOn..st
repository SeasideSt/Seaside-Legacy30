rendering
renderContentOn: html
	html unorderedList
		id: 'evolution';
		class: 'evolutionTree';
		script: (html sortable
			create;
			tree: true;
			onUpdate: (html request
				triggerTree: 'evolution'
				callback: [ :values | tree := values ]));
		with: [ self renderChildren: (self childrenOf: nil) on: html ]