rendering-attributes
renderAttributesOn: html
	html heading level: 2; with: 'Configuration'.
	html table: [
		self groupedAttributes do: [ :association |
			html tableRow: [
				html tableData
					colSpan: 3;
					with: [ html heading level3; with: (self labelForSelector: association key) ] ].
				association value 
					do: [ :attribute | self renderAttribute: attribute on: html ] ] ]