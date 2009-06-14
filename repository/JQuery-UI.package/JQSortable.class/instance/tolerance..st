options-generated
tolerance: aString
	"This is the way the reordering behaves during drag. Possible values: 'intersect', 'pointer'. In some setups, 'pointer' is more natural. <ul> <li>''intersect'': draggable overlaps the droppable at least 50%</li> <li>''pointer'': mouse pointer overlaps the droppable</li> </ul>"

	self optionAt: 'tolerance' put: aString