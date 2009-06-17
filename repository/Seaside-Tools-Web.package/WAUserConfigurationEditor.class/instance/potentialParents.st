rendering-ancestry
potentialParents
	^ ((WASystemConfiguration allSubclasses collect: [ :each | each instance ]),
		WASharedConfiguration configurations asOrderedCollection)
		select: [ :each | 
			(self configuration canAddParent: each)
				and: [ (self configuration inheritsFrom: each) not ] ]