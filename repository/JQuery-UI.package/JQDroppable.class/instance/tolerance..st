options-generated
tolerance: aString
	"Specifies which mode to use for testing whether a draggable is 'over' a droppable. Possible values: 'fit', 'intersect', 'pointer', 'touch'. <ul> <li>''fit'': draggable overlaps the droppable entirely</li> <li>''intersect'': draggable overlaps the droppable at least 50%</li> <li>''pointer'': mouse pointer overlaps the droppable</li> <li>''touch'': draggable overlaps the droppable any amount</li> </ul>"

	self optionAt: 'tolerance' put: aString