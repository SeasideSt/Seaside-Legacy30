rendering
renderRootDispatcherOn: html
	
	| aHandler aString |
	aHandler := self defaultDispatcher.
	html tableRow: [
		html tableData.
		html tableData: [html anchor
							class: 'selected' if: aHandler = selection;
							callback: [ self configure: aHandler ];
							with: '[Root]' ].
		html tableData: 'Default dispatcher' ]
