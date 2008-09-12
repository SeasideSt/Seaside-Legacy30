rendering
renderHeaderForColumn: aColumn on: html
	html tableHeading:  [
		aColumn canSort
			ifTrue: [
				html anchor
					callback: [self sortColumn: aColumn];
					with: aColumn title]
			ifFalse: [ html text: aColumn title ] ]