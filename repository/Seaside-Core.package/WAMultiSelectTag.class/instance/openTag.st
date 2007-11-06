private
openTag
	self hasCallback ifTrue: [
		canvas insert: [
			canvas hiddenInput
				callback: [ selected := OrderedCollection new ] ] ].
	self attributes at: 'multiple' put: true.
	super openTag