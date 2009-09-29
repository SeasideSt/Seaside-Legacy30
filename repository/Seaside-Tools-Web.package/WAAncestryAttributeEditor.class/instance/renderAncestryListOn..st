rendering
renderAncestryListOn: html
	html paragraph.
	html label: 'Assigned parents: '.
	html table: [
		html tableRow: [
			html tableData
				verticalAlign: 'top';
				with: [
					html select
						size: 5;
						selected: selectedConfig contents;
						class: 'fix';
						labels: [:each | each isShared ifTrue: ['(*) ' , each name] ifFalse: [each name ]];
						list: self configuration parents;
						callback: [:value | selectedConfig contents: value]].
			html tableData: [
				html anchor
					title: 'Move parent up';
					onClick: 'return submitForm(this)';
					callback: [self configuration moveParentUp: selectedConfig contents];
					with: [html html: '&uarr;'].
				html break; break.
				html anchor
					title: 'Remove parent configuration';
					onClick: 'return submitForm(this)';
					callback: [self configuration removeParent: selectedConfig contents];
					with: 'X'.
				html break; break.
				html anchor
					title: 'Move parent down';
					onClick: 'return submitForm(this)';
					callback: [self configuration moveParentDown: selectedConfig contents];
					with: [html html: '&darr;'] ] ] ].
	html break.
	html anchor
		class: 'large';
		title: 'Configure shared parent';
		onClick: 'return submitForm(this)';
		callback: [selectedConfig contents isNil ifFalse: [ self show: selectedConfig contents configurationComponent ] ];
		with: 'Configure'.
	
 