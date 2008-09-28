rendering-ancestry
potentialParents
	^ ((WASystemConfiguration allSubclasses collect: [ :each | each instance ]),
		WASharedConfiguration configurations)
		select: [ :each | 
			(self configuration canAddParent: each)
				and: [ (self configuration inheritsFrom: each) not ] ]