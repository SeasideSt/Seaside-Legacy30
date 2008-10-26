options
connectWith: aArray
	"Takes an array of jQuery selectors that also have sortables applied. If used, the sortable is now connected to the other one-way, so you can drag from this sortable to the other."

	self optionAt: 'connectWith' put: aArray