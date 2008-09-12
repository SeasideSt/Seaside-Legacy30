private
closeTag
	super closeTag.
	self hasCallback ifFalse: [ ^ self ].
	canvas insert: [
		canvas hiddenInput callback: [
			self hasCallback
				ifTrue: [ callbackBlock value: selected ] ] ]