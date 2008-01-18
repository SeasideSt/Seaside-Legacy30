initialize-release
initialize
	super initialize.
	elementHeight := 40.
	visibleElements := 5.
	delay = 6000.
	title := 'Title (Stop on mouse over or title click)'.
	elements := OrderedCollection new.
	elements add: (SUScrollItem label: '20-12-2007: Some News 1' text: 'Should show some important news!').
	elements add: (SUScrollItem label: '21-12-2007: Some News 2' text: 'Should show some important news!').
	elements add: (SUScrollItem label: '22-12-2007: Some News 3' text: 'Should show some important news!').
	elements add: (SUScrollItem label: '23-12-2007: Some News 4' text: 'Should show some important news!').
	elements add: (SUScrollItem label: '24-12-2007: Some News 5' text: 'Merry christmas!').
	elements add: (SUScrollItem label: '01-01-2008: Happy new year' text: 'Happy new year!').
	elements add: (SUScrollItem label: '02-01-2008: Some News 14' text: 'Should show some important news!').
	elements add: (SUScrollItem label: '03-01-2008: Some News 34' text: 'Should show some important news!').
	elements add: (SUScrollItem label: '04-01-2008: Some News 44' text: 'Should show some important news!').
	elements add: (SUScrollItem label: '05-01-2008: Some News 54' text: 'Should show some important news!').
