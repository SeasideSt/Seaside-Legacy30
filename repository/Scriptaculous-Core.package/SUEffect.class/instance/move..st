deprecated
move: aPoint
	"This effect moves an element by a given y/x pair of pixels."

	self seasideDeprecatedApi: 'SUEffect>>move:'
		details: 'use #move instead'.
	self create; method: 'MoveBy'; arguments: self arguments , (Array with: aPoint y with: aPoint x)