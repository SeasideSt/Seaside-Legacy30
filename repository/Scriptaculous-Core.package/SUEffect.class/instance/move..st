effects
move: aPoint
	"This effect moves an element by a given x/y pair of pixels."

	self create; method: 'Move'; arguments: self arguments , (Array with: aPoint x with: aPoint y)