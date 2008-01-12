effects
move: aPoint
	"This effect moves an element by a given y/x pair of pixels."

	self create; method: 'MoveBy'; arguments: self arguments , (Array with: aPoint y with: aPoint x)