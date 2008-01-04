public
with: aBlock
	self create; apply: (Array
		with: self id
		with: (String streamContents: [ :stream |
			self render: aBlock on: stream ]))