rendering-ancestry
renderAncestryListOn: html
	|selectedConfig|
	selectedConfig := WAValueHolder new.
	html label: 'Assigned parents: '.
	html table:
		[
		html tableRow: [
			html tableData verticalAlign: 'top'; with: [
				html select
					size: 5;
					selected: selectedConfig contents;
					class: 'fix';
					labels: [:each | each isShared ifTrue: ['(*) ' , each name] ifFalse: [each name ]];
					list: self configuration parents;
					callback: [:value | selectedConfig contents: value]].
			html tableData: [
				html button
					title: 'Move parent up';
					value: '/\';
					callback: [self configuration moveParentUp: selectedConfig contents] .
				html break.
				html button
					title: 'Remove parent configuration';
					value: 'X';
					callback: [self configuration removeParent: selectedConfig contents].
				html break.
				html button
					title: 'Move parent down';
					value: '\/';
					callback: [self configuration moveParentDown: selectedConfig contents] .
				]].
	]
	
"	self configuration parents isEmpty ifTrue: [ ^ self ].
	html unorderedList: 
		[ self parents do: 
			[ :each | 
			self 
				renderParent: each
				on: html ] ]"