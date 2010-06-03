rendering
renderRootDispatcherOn: html
	
	| anEntryPoint aString |
	anEntryPoint := self defaultDispatcher.
	html tableRow: [
		html tableData.
		html tableData: [html anchor
							class: 'selected' if: anEntryPoint = selection;
							callback: [ self configure: anEntryPoint ];
							with: '[Root]' ].
		html tableData: 'Default dispatcher' ]
