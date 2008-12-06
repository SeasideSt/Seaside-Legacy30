callbacks
callback: aBlock
	"Register aBlock as a primary callback of the receiver. It is only possible to have a single primary callback registered per instance. The primary callback must generate a response."

	self hasPrimaryCallback
		ifTrue: [
			(self owner canvas callbacks
				at: primaryCallbackId
				ifAbsent: [ self error: 'Invalid primary callback id.' ])
					block: aBlock ]
		ifFalse: [
			self url: owner canvas context actionUrl withoutParameters.
			self addParameters: owner canvas context actionUrl parameters.
			self addParameter: (primaryCallbackId := owner canvas callbacks
				registerAjaxCallback: aBlock) ]