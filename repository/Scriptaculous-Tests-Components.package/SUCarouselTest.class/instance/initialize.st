initialization
initialize
	super initialize.
	carousel := SUNavigationCarousel new.
	1 to: 10 do: [:idx | carousel add: (SUCounterTest on: idx) label: 'Counter ', idx asString].


	