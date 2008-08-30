initialize-release
initialize
	super initialize.
	windows := OrderedCollection 
					with: ((SUWindow on: [:w | SUCounterTest on: 10]) id: 'window_1'; zIndex: 1000; title: 'Window 1'; yourself)
					with: ((SUWindow on: [:w | SUFormTest new]) id: 'window_2';
								zIndex: 1001;
								origin: (300@100);
								extent: 500@240;
								title: 'Window 2';
								yourself)
					with: ((SUWindow on: [:w | SUTooltipTest new]) id: 'window_3';
								updateBlock: [:w :model | model textWithKey: (w arguments at: 3)];
								zIndex: 1003;
								extent: 150@45;
								title: 'Tooltip';
								closeButtonEnabled: false;
								minimizeButtonEnabled: false;
								yourself)